struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: vec2<f32> = vec2<f32>(-189f, -879f);

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = any(select(select(select(select(vec4<bool>(true, arg_0.d.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_0.d.b.x), true), select(vec4<bool>(true, true, true, arg_1.b.x), vec4<bool>(true, true, true, true), vec4<bool>(true, arg_1.b.x, arg_1.b.x, true)), vec4<bool>(arg_0.d.b.x, false, arg_0.d.b.x, false)), vec4<bool>(arg_0.d.b.x == true, arg_0.b.c.x > -175f, any(vec3<bool>(arg_0.d.b.x, true, false)), true), arg_1.b.x), select(!select(vec4<bool>(arg_0.d.b.x, false, false, arg_1.b.x), vec4<bool>(arg_0.d.b.x, arg_0.d.b.x, arg_1.b.x, true), vec4<bool>(true, arg_0.d.b.x, arg_1.b.x, true)), select(vec4<bool>(arg_1.b.x, arg_1.b.x, false, arg_1.b.x), vec4<bool>(true, false, true, arg_1.b.x), !vec4<bool>(true, true, arg_0.d.b.x, true)), max(arg_0.b.d.x, u_input.b) <= -1i), select(!select(vec4<bool>(arg_1.b.x, true, arg_1.b.x, false), vec4<bool>(arg_0.d.b.x, false, false, arg_1.b.x), vec4<bool>(arg_1.b.x, arg_1.b.x, false, true)), select(!vec4<bool>(true, arg_1.b.x, arg_1.b.x, true), select(vec4<bool>(arg_0.d.b.x, arg_1.b.x, arg_1.b.x, false), vec4<bool>(arg_1.b.x, arg_0.d.b.x, arg_0.d.b.x, true), vec4<bool>(false, arg_0.d.b.x, arg_1.b.x, true)), vec4<bool>(true, true, true, true)), (arg_0.d.b.x | arg_1.b.x) == true)));
    var var_1 = !select(select(!vec3<bool>(var_0, false, var_0), vec3<bool>(true, arg_1.b.x, select(true, false, true)), false), vec3<bool>(false, false, true), false);
    global2 = ~4294967295u;
    let var_2 = 1u;
    let var_3 = Struct_4(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(-(~vec3<i32>(16640i, arg_0.b.d.x, 1i)), reverseBits(~vec3<i32>(u_input.b, arg_0.a.x, arg_1.a.x))), vec3<i32>(arg_1.a.x, _wgslsmith_mod_i32(u_input.b, -21589i), -20540i) << (~vec3<u32>(0u, 4294967295u, 72968u) % vec3<u32>(32u)), arg_0.b.d.zxw), -vec2<i32>(arg_0.b.d.x, u_input.b), Struct_3(select(~vec2<i32>(arg_0.a.x, arg_1.a.x), ~vec2<i32>(1i, u_input.b), vec2<bool>(arg_0.d.b.x, false != arg_1.b.x)), Struct_1(1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(188f, global0[_wgslsmith_index_u32(59449u, 25u)], 686f) + vec3<f32>(global1.x, arg_0.b.c.x, -510f))), _wgslsmith_f_op_vec2_f32(-arg_0.b.c), ~(arg_0.b.d ^ arg_0.b.d)), ~_wgslsmith_mod_vec2_u32(~arg_0.c, firstLeadingBit(vec2<u32>(50000u, var_2))), Struct_2(vec2<i32>(_wgslsmith_mult_i32(-1i, arg_0.b.d.x), abs(5273i)), arg_0.d.b)));
    return select(select(!select(vec2<bool>(var_0, arg_1.b.x), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(!var_0, all(!vec4<bool>(true, var_0, true, var_1.x))), vec2<bool>(var_3.c.d.b.x, any(select(vec3<bool>(var_3.c.d.b.x, var_1.x, arg_0.d.b.x), vec3<bool>(arg_0.d.b.x, false, arg_0.d.b.x), var_1.x)))), vec2<bool>(var_0, true), var_1.x);
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    global0 = array<f32, 25>();
    let var_0 = Struct_2(-min(_wgslsmith_add_vec2_i32(arg_0, arg_0), firstTrailingBit(-vec2<i32>(1i, arg_0.x))), select(!select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(false, false)), select(vec2<bool>(true, true), func_3(Struct_3(arg_0, Struct_1(u_input.a, vec3<f32>(1158f, -637f, -1225f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], 296f), vec4<i32>(2147483647i, 48001i, arg_0.x, -1i)), vec2<u32>(4294967295u, 0u), Struct_2(vec2<i32>(1i, -23328i), vec2<bool>(true, true))), Struct_2(vec2<i32>(-22967i, u_input.b), vec2<bool>(false, false))), !(u_input.a <= u_input.a)), vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), true)));
    var var_1 = _wgslsmith_mult_vec3_u32(select(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(26927u, u_input.a, 4294967295u)), vec3<u32>(1u, u_input.a, 1u >> (u_input.a % 32u))), vec3<u32>(1u, ~5618u, 1u), select(select(vec3<bool>(false, false, var_0.b.x), vec3<bool>(false, false, true), true), vec3<bool>(true, true, -1000f == global0[_wgslsmith_index_u32(u_input.a, 25u)]), var_0.b.x)), select(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(4401u, 24113u)), ~u_input.a, ~u_input.a), (vec3<u32>(u_input.a, 4294967295u, 81294u) | ~vec3<u32>(u_input.a, u_input.a, 99535u)) | select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, 1u), false), vec3<bool>(!(var_0.b.x | true), ~u_input.a <= max(0u, u_input.a), var_0.b.x)));
    var var_2 = Struct_2(var_0.a, var_0.b);
    var var_3 = ~(-((vec3<i32>(-1i) * -vec3<i32>(var_0.a.x, var_0.a.x, 2090i)) | (reverseBits(vec3<i32>(19899i, -55963i, u_input.b)) & firstLeadingBit(vec3<i32>(-1i, -1i, 2147483647i)))));
    return Struct_3(-(~vec2<i32>(1i, 2147483647i) & ~var_3.yy), Struct_1(var_1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(35688u >> (1u % 32u), 25u)], _wgslsmith_f_op_f32(global1.x + global0[_wgslsmith_index_u32(26824u, 25u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(45821u, 25u)]))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-651f, -1569f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)]))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, 1489f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1069f, global0[_wgslsmith_index_u32(36661u, 25u)]), vec2<f32>(global1.x, global1.x))), select(vec2<bool>(false, true), vec2<bool>(var_2.b.x, var_2.b.x), true))), _wgslsmith_f_op_f32(-global1.x) <= global1.x)), ~vec4<i32>(0i >> (u_input.a % 32u), arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -2147483647i, var_3.x), vec3<i32>(var_3.x, 29227i, var_2.a.x)), var_3.x)), ~vec2<u32>(var_1.x, reverseBits(0u)), Struct_2(arg_0, vec2<bool>(var_2.b.x, false)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_4 {
    global2 = arg_0.b.a;
    var var_0 = global0[_wgslsmith_index_u32(69043u << (select(u_input.a, arg_0.b.a, all(!select(arg_0.d.b, vec2<bool>(false, arg_2.x), arg_2.x))) % 32u), 25u)];
    global0 = array<f32, 25>();
    let var_1 = 993f;
    let var_2 = !arg_0.d.b;
    return Struct_4(func_2(_wgslsmith_sub_vec2_i32(arg_0.b.d.zz, vec2<i32>(arg_0.d.a.x, -32582i) ^ select(vec2<i32>(-22795i, arg_0.d.a.x), arg_0.a, arg_2))).b.d.xxx, min(arg_0.d.a, select(~(arg_0.b.d.xw ^ vec2<i32>(arg_0.a.x, arg_0.a.x)), arg_1.a, select(!arg_1.b, !vec2<bool>(arg_0.d.b.x, true), true))), Struct_3(~arg_1.a, arg_0.b, vec2<u32>(~86714u, 0u), func_2(vec2<i32>(u_input.b, 1i)).d));
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> Struct_2 {
    let var_0 = ~_wgslsmith_div_i32(arg_1.a.x, _wgslsmith_mult_i32(arg_1.b.x, 1i));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 25u)];
    let var_2 = arg_2.c.d.b.x;
    global2 = 58654u;
    global2 = firstTrailingBit(~4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(47617u << (arg_2.c.b.a % 32u), 43822u), arg_2.c.c));
    return arg_1.c.d;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = vec4<u32>(u_input.a, abs(_wgslsmith_add_u32(u_input.a, u_input.a) ^ u_input.a) & 1128u, 4294967295u, u_input.a);
    var var_1 = _wgslsmith_dot_vec4_i32(max(-(vec4<i32>(-2147483647i, u_input.b, -26210i, -1i) | vec4<i32>(0i, u_input.b, -2992i, u_input.b)), (vec4<i32>(u_input.b, u_input.b, -2147483647i, 2147483647i) ^ vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(11586i, 7650i, u_input.b, 0i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), _wgslsmith_div_vec4_i32(vec4<i32>(10117i, select(37405i, u_input.b, arg_0), firstLeadingBit(17503i), -7412i >> (u_input.a % 32u)), vec4<i32>(u_input.b, reverseBits(15195i), u_input.b << (u_input.a % 32u), u_input.b))) << (_wgslsmith_mult_u32(30078u, _wgslsmith_div_u32(~firstTrailingBit(var_0.x), _wgslsmith_add_u32(min(u_input.a, u_input.a), u_input.a))) % 32u);
    let var_2 = func_5(1u, func_4(func_2(vec2<i32>(2147483647i, 8208i)), Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 14150i), vec2<i32>(u_input.b, 2147483647i)) ^ ~vec2<i32>(18808i, 37141i), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), !vec2<bool>(all(vec3<bool>(true, false, arg_0)), any(vec3<bool>(false, arg_0, arg_0)))), Struct_4(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -25018i, u_input.b), vec3<i32>(u_input.b, -2147483647i, u_input.b))), _wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.b, _wgslsmith_div_i32(u_input.b, u_input.b)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -32572i), vec2<i32>(67019i, 58633i)), vec2<i32>(u_input.b, u_input.b))), Struct_3(_wgslsmith_mult_vec2_i32(func_4(Struct_3(vec2<i32>(u_input.b, -22007i), Struct_1(var_0.x, vec3<f32>(1000f, -581f, -1416f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], -116f), vec4<i32>(u_input.b, 23865i, u_input.b, u_input.b)), var_0.yz, Struct_2(vec2<i32>(51075i, u_input.b), vec2<bool>(arg_0, arg_0))), Struct_2(vec2<i32>(u_input.b, u_input.b), vec2<bool>(false, true)), vec2<bool>(false, arg_0)).b, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -47562i), vec2<i32>(u_input.b, -2147483647i))), Struct_1(min(1u, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global0[_wgslsmith_index_u32(0u, 25u)], global1.x)), vec2<f32>(997f, -1350f), -vec4<i32>(-1i, u_input.b, 2147483647i, -2147483647i)), var_0.wz & vec2<u32>(9544u, 77012u), func_2(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b))).d)));
    global0 = array<f32, 25>();
    return Struct_1(u_input.a & max(u_input.a, 4294967295u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~var_0.x, 25u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(602f, 942f, false)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(21479u, 25u)]), false)), _wgslsmith_f_op_f32(f32(-1f) * -270f))), vec2<f32>(func_2(vec2<i32>(~u_input.b, var_2.a.x ^ 0i)).b.c.x, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_0.x, 25u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(23975u, 25u)] + global0[_wgslsmith_index_u32(firstLeadingBit(var_0.x), 25u)]), all(vec3<bool>(var_2.b.x, var_2.b.x, arg_0))))), _wgslsmith_mod_vec4_i32(min(vec4<i32>(27242i, 47369i, -2147483647i, var_2.a.x) & vec4<i32>(6877i, -2147483647i, u_input.b, -2147483647i), _wgslsmith_div_vec4_i32(func_2(vec2<i32>(u_input.b, var_2.a.x)).b.d, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, var_2.a.x, u_input.b, 21508i), vec4<i32>(2147483647i, -1i, u_input.b, 2147483647i)))), (select(vec4<i32>(u_input.b, var_2.a.x, u_input.b, 2147483647i), vec4<i32>(u_input.b, u_input.b, 2147483647i, 51002i), arg_0) | _wgslsmith_add_vec4_i32(vec4<i32>(var_2.a.x, 240i, u_input.b, -2147483647i), vec4<i32>(var_2.a.x, 1i, var_2.a.x, 0i))) | ~func_4(Struct_3(vec2<i32>(0i, var_2.a.x), Struct_1(23414u, vec3<f32>(-1307f, 353f, global1.x), vec2<f32>(global1.x, 382f), vec4<i32>(var_2.a.x, var_2.a.x, var_2.a.x, 21652i)), var_0.ww, var_2), Struct_2(var_2.a, var_2.b), vec2<bool>(true, true)).c.b.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(174f == global1.x);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(any(vec2<bool>(false, false))).c - var_0.b.yx) + vec2<f32>(_wgslsmith_f_op_f32(ceil(597f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a, 25u)]) + _wgslsmith_div_f32(var_0.c.x, 1509f)))) * _wgslsmith_f_op_vec2_f32(var_0.b.zy * func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -1i) >> (vec2<u32>(u_input.a, 42553u) % vec2<u32>(32u)), vec2<i32>(var_0.d.x, var_0.d.x))).b.c));
    var var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(47758u, (0u >> (0u % 32u)) | ~u_input.a), vec2<u32>(1u, _wgslsmith_mod_u32(max(var_0.a, 86867u), 0u))), select(~vec2<u32>(1u, 1u) & select(vec2<u32>(u_input.a, var_0.a), _wgslsmith_mod_vec2_u32(vec2<u32>(22757u, var_0.a), vec2<u32>(1u, u_input.a)), vec2<bool>(true, true)), countOneBits(vec2<u32>(~40152u, select(u_input.a, 0u, false))), true));
    let var_2 = vec2<bool>(true, false);
    var var_3 = ~4294967295u;
    var var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_2(-var_0.d.zz), Struct_2(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(var_0.d.yy, var_0.d.yy), func_4(Struct_3(var_0.d.yy, Struct_1(40209u, var_0.b, vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(var_0.a, 25u)]), vec4<i32>(var_0.d.x, u_input.b, 43183i, u_input.b)), vec2<u32>(var_1.x, var_0.a), Struct_2(var_0.d.xy, vec2<bool>(false, var_2.x))), Struct_2(vec2<i32>(0i, u_input.b), var_2), vec2<bool>(var_2.x, var_2.x)).b), !(!var_2)), !var_2).c.b.c);
}

