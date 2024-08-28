struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<u32>, 14>;

var<private> global3: array<Struct_1, 11>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = 4294967295u ^ arg_1.b.x;
    var var_1 = max(~select(abs(_wgslsmith_add_vec2_i32(u_input.b, u_input.b)), u_input.b, ~1i >= (u_input.a << (global1.a % 32u))), _wgslsmith_sub_vec2_i32(~u_input.b, select(u_input.b, max(-u_input.b, vec2<i32>(global0.x, u_input.c)), select(vec2<bool>(arg_2.c, arg_1.c), select(vec2<bool>(false, true), vec2<bool>(arg_1.c, global1.c), vec2<bool>(global1.c, true)), !vec2<bool>(true, arg_1.c)))));
    global0 = vec2<i32>(i32(-1i) * -_wgslsmith_clamp_i32(-1i, 36270i & var_1.x, global0.x), -2147483647i);
    let var_2 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(global0.x, -_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b.x, 1i), global0.x), global0.x), -16864i);
    var var_3 = arg_0;
    return -(u_input.b.x | -u_input.c);
}

fn func_2() -> bool {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global1.b.yxz, vec3<u32>(_wgslsmith_sub_u32(global1.a | global1.a, 1u ^ global1.a), 12515u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), ~vec3<u32>(global1.a, 0u, global1.a)))), 13516u), 11u)];
    var var_1 = -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, global0.x, 18877i), vec4<i32>(-2147483647i, 6144i, global0.x, 1i)), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -6128i), vec2<i32>(global0.x, u_input.a)), ~u_input.a, func_3(Struct_1(2045u, var_0.b, var_0.c), Struct_1(var_0.b.x, global1.b, global1.c), Struct_1(var_0.a, global1.b, global1.c)), 2147483647i), -(~vec4<i32>(2147483647i, global0.x, -2147483647i, u_input.a))));
    global0 = var_1.zz;
    let var_2 = Struct_1(0u, var_0.b, select(global1.c, all(!select(vec2<bool>(true, var_0.c), vec2<bool>(false, global1.c), vec2<bool>(true, true))), any(select(select(vec2<bool>(global1.c, global1.c), vec2<bool>(false, var_0.c), global1.c), !vec2<bool>(var_0.c, false), !vec2<bool>(var_0.c, false)))));
    var_1 = -vec4<i32>(_wgslsmith_sub_i32(reverseBits(global0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-40978i, var_1.x, 48544i, 1i), vec4<i32>(u_input.c, 0i, global0.x, var_1.x))), var_1.x, ~(~u_input.a), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a, -45684i), -47509i & var_1.x)) | -vec4<i32>(_wgslsmith_mult_i32(-u_input.b.x, 20971i), -u_input.b.x << ((67815u & var_2.b.x) % 32u), -1i, ~(-14097i));
    return any(!(!(!vec2<bool>(true, var_0.c))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(global1.b.x, _wgslsmith_add_u32(~arg_0.x, abs(~(~arg_0.x))));
    let var_1 = -254f;
    global0 = ~reverseBits(vec2<i32>(1i, 1i)) ^ vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-49936i, 22404i, u_input.b.x ^ 47296i, 26100i), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c, global0.x, u_input.a, u_input.b.x)), ~vec4<i32>(3172i, 1i, u_input.b.x, global0.x))), _wgslsmith_mod_i32(-52909i, global0.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -1000f, var_1, var_1)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1976f, -1836f, 875f, var_1)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1155f, var_1, 1f, _wgslsmith_f_op_f32(-1482f + 450f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-494f, var_1, var_1, 988f) + vec4<f32>(-794f, -257f, -1000f, var_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(801f, var_1, var_1, -1000f) + vec4<f32>(749f, var_1, var_1, 151f))))))));
    var var_3 = arg_2.a;
    return Struct_1(~1u, global2[_wgslsmith_index_u32(firstLeadingBit(~arg_2.a), 14u)], arg_2.c);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = func_4(select(~reverseBits(firstLeadingBit(arg_0.b.xw)), select(vec2<u32>(~arg_0.b.x, _wgslsmith_div_u32(arg_0.b.x, 0u)), vec2<u32>(arg_2.b.x, arg_0.b.x) | arg_2.b.wy, !all(vec4<bool>(true, arg_0.c, true, arg_0.c))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(arg_1.c, global1.c), select(vec2<bool>(global1.c, false), vec2<bool>(arg_2.c, false), vec2<bool>(true, arg_0.c)), vec2<bool>(false, true)))), vec4<u32>(_wgslsmith_add_u32(arg_2.b.x, ~0u) ^ 93589u, ~1u, 46612u, 1u), global3[_wgslsmith_index_u32(7118u, 11u)], vec2<bool>(arg_2.c, func_2()));
    global0 = abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, firstTrailingBit(abs(-9311i))), -firstTrailingBit(vec2<i32>(u_input.c, u_input.a) >> (arg_2.b.zz % vec2<u32>(32u)))));
    global2 = array<vec4<u32>, 14>();
    global2 = array<vec4<u32>, 14>();
    global3 = array<Struct_1, 11>();
    return var_0.c;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: bool, arg_3: i32) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_mod_u32(global1.b.x, ~(firstLeadingBit(global1.b.x) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(53975u, global1.a), vec2<u32>(global1.b.x, arg_0.x)))), select(~func_4(vec2<u32>(0u, arg_0.x), arg_0 ^ arg_0, Struct_1(arg_0.x, arg_0, arg_2), vec2<bool>(true, arg_2)).b, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 18222u), vec2<u32>(global1.b.x, 48941u)) ^ select(arg_0.x, 1u, arg_2), 1u, ~(arg_0.x | global1.a), global1.b.x), select(vec4<bool>(global1.c, true, true, all(vec2<bool>(true, true))), select(!vec4<bool>(true, false, arg_2, true), vec4<bool>(arg_2, arg_2, false, false), arg_2), !select(arg_2, global1.c, false))), false);
    let var_1 = func_1(global3[_wgslsmith_index_u32(0u, 11u)], global3[_wgslsmith_index_u32(arg_0.x, 11u)], global3[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(39684u, max(arg_0.x, min(31337u, var_0.a))), _wgslsmith_mult_u32(var_0.b.x << ((arg_0.x | arg_0.x) % 32u), _wgslsmith_mod_u32(19108u, _wgslsmith_sub_u32(var_0.b.x, global1.b.x))), ((global1.b.x << (1402u % 32u)) != _wgslsmith_add_u32(4294967295u, arg_0.x)) | true), 11u)]);
    var var_2 = func_4(~countOneBits(_wgslsmith_mod_vec2_u32(var_0.b.yw, global1.b.xy)), max(max(countOneBits(vec4<u32>(45015u, 0u, arg_0.x, var_0.b.x) << (global2[_wgslsmith_index_u32(78272u, 14u)] % vec4<u32>(32u))), max(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 43075u), var_0.b >> (var_0.b % vec4<u32>(32u)))), ~_wgslsmith_div_vec4_u32(select(vec4<u32>(global1.a, 0u, global1.b.x, var_0.b.x), vec4<u32>(7475u, var_0.b.x, 11255u, 26786u), true), ~vec4<u32>(arg_0.x, global1.b.x, 33128u, 41057u))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_4(vec2<u32>(~arg_0.x, firstLeadingBit(arg_0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.a, var_0.b.x, 1u, 18647u), vec4<u32>(1u, global1.b.x, 4294967295u, 7930u)) << (vec4<u32>(4294967295u, var_0.b.x, arg_0.x, 4294967295u) % vec4<u32>(32u)), global3[_wgslsmith_index_u32(arg_0.x, 11u)], !vec2<bool>(var_1, false)).b, vec4<u32>(~global1.b.x, func_4(~vec2<u32>(global1.a, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a, global1.b.x, 10759u, 0u), vec4<u32>(125891u, global1.a, 36871u, 0u)), func_4(var_0.b.yw, var_0.b, global3[_wgslsmith_index_u32(31737u, 11u)], vec2<bool>(var_1, true)), select(vec2<bool>(global1.c, false), vec2<bool>(var_1, var_1), true)).b.x, 21553u, func_4(_wgslsmith_mod_vec2_u32(global1.b.ww, global1.b.xy), vec4<u32>(var_0.a, var_0.a, 4294967295u, global1.a), Struct_1(arg_0.x, var_0.b, global1.c), select(vec2<bool>(false, true), vec2<bool>(global1.c, var_1), true)).b.x)), 11u)], vec2<bool>(arg_2, all(select(!vec3<bool>(arg_2, global1.c, true), !vec3<bool>(var_1, var_0.c, false), vec3<bool>(arg_2, var_1, true)))));
    global0 = u_input.b;
    var var_3 = abs(~_wgslsmith_add_i32(max(arg_3, 0i), -2147483647i));
    return vec3<i32>(1i, -(~(-2147483647i & _wgslsmith_sub_i32(-1i, arg_3))), -max(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b << (arg_0.wy % vec2<u32>(32u))), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(~(~countOneBits(vec3<i32>(18158i, u_input.b.x, -41896i))), func_5(~global2[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-194f, 1531f) + vec2<f32>(1679f, 1000f)), func_1(global3[_wgslsmith_index_u32(global1.a, 11u)], Struct_1(4294967295u, global2[_wgslsmith_index_u32(1u, 14u)], global1.c), Struct_1(global1.b.x, vec4<u32>(global1.b.x, global1.a, global1.b.x, 0u), global1.c)), global0.x >> (4294967295u % 32u)) | vec3<i32>(u_input.b.x, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, 79735i), vec3<i32>(global0.x, -19123i, -1i)))) | reverseBits(vec3<i32>(_wgslsmith_sub_i32(2147483647i, 1i), -global0.x, i32(-1i) * -2350i));
    global0 = vec2<i32>(~(-41447i), global0.x);
    let var_1 = Struct_1(1u, global1.b, global1.c);
    let var_2 = func_4(global1.b.yy << (_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~var_1.b.zw, vec2<u32>(24750u, global1.b.x)), vec2<u32>(global1.b.x | 1u, max(var_1.b.x, 0u))) % vec2<u32>(32u)), select(vec4<u32>(global1.b.x, ~32674u, ~var_1.a, abs(var_1.a)), ~func_4(var_1.b.zy, vec4<u32>(4294967295u, global1.a, 78623u, 83954u), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 14026u, global1.b.x), vec3<u32>(var_1.b.x, global1.b.x, var_1.b.x)), 11u)], !vec2<bool>(false, global1.c)).b, vec4<bool>(_wgslsmith_div_f32(1734f, -2181f) <= _wgslsmith_f_op_f32(sign(239f)), var_1.c, var_1.c, false)), func_4(vec2<u32>(_wgslsmith_mod_u32(1u, 4294967295u), global1.b.x), var_1.b, func_4(global1.b.xz, ~(~vec4<u32>(var_1.b.x, 33395u, global1.a, 4294967295u)), func_4(max(global1.b.xz, vec2<u32>(1u, 4294967295u)), ~global1.b, func_4(vec2<u32>(global1.a, 4294967295u), global1.b, var_1, vec2<bool>(global1.c, var_1.c)), select(vec2<bool>(false, false), vec2<bool>(var_1.c, false), var_1.c)), vec2<bool>(true, var_1.c)), !select(vec2<bool>(false, var_1.c), select(vec2<bool>(true, global1.c), vec2<bool>(var_1.c, false), vec2<bool>(var_1.c, false)), vec2<bool>(var_1.c, global1.c))), vec2<bool>(false, global1.c));
    global0 = max(vec2<i32>(-countOneBits(-61520i & u_input.c), var_0.x), select(vec2<i32>(-1i, -21039i & global0.x) & var_0.zx, (vec2<i32>(1i, global0.x) >> (vec2<u32>(global1.b.x, 1u) % vec2<u32>(32u))) & (~var_0.yy & abs(var_0.yx)), !select(vec2<bool>(true, true), select(vec2<bool>(var_2.c, var_2.c), vec2<bool>(global1.c, var_1.c), vec2<bool>(var_2.c, global1.c)), vec2<bool>(global1.c, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~(~min(vec3<u32>(var_1.b.x, global1.b.x, 20128u), vec3<u32>(3989u, 1u, var_1.b.x))), var_2.b.wzy), 4294967295u, 994f);
}

