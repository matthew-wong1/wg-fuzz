struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: vec2<f32>;

var<private> global2: array<bool, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: f32, arg_3: vec2<bool>) -> u32 {
    var var_0 = Struct_2(Struct_1(select(max(~arg_1.b.b.a.b.xx, ~arg_1.b.a.a.a), arg_1.b.b.a.a, any(select(arg_1.b.a.a.c.wx, vec2<bool>(true, true), vec2<bool>(true, true)))), vec3<u32>(~global0[_wgslsmith_index_u32(abs(15152u), 17u)], _wgslsmith_dot_vec3_u32(arg_1.b.b.b.b & arg_1.b.a.b.b, vec3<u32>(arg_1.b.a.a.b.x, 4294967295u, 1u) | arg_1.b.b.b.b), 28200u), arg_1.b.a.b.c, vec4<i32>(min(~arg_0.x, 2147483647i), arg_0.x, arg_0.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(73677u, global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28753u, 17u)], 17u)], 104611u)) % 32u), _wgslsmith_sub_i32(abs(-2147483647i), arg_0.x))), arg_1.b.a.a);
    return reverseBits(arg_1.b.a.b.a.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: u32, arg_3: vec2<i32>) -> Struct_4 {
    let var_0 = vec4<u32>(global0[_wgslsmith_index_u32(1u, 17u)], 28994u, ~(~func_3(vec3<i32>(2147483647i, arg_3.x, 2147483647i), Struct_4(u_input.a.xy, Struct_3(Struct_2(Struct_1(vec2<u32>(15627u, 72170u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6181u, 17u)], 17u)], arg_2, global0[_wgslsmith_index_u32(30884u, 17u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(39839u, 26u)], true, global2[_wgslsmith_index_u32(18394u, 26u)]), vec4<i32>(arg_3.x, -2147483647i, u_input.b, arg_0.x)), Struct_1(vec2<u32>(arg_2, global0[_wgslsmith_index_u32(16942u, 17u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)], 33940u, 4294967295u), vec4<bool>(global2[_wgslsmith_index_u32(arg_2, 26u)], global2[_wgslsmith_index_u32(41429u, 26u)], global2[_wgslsmith_index_u32(75018u, 26u)], true), vec4<i32>(arg_0.x, -2147483647i, arg_3.x, -2147483647i))), Struct_2(Struct_1(vec2<u32>(39201u, 1u), vec3<u32>(54217u, 4294967295u, 37145u), vec4<bool>(global2[_wgslsmith_index_u32(arg_2, 26u)], false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 26u)], true), vec4<i32>(16174i, 2147483647i, arg_0.x, 55846i)), Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(20301u, 17u)], 123087u), vec3<u32>(arg_2, 1u, arg_2), vec4<bool>(true, true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2, 17u)], 26u)], global2[_wgslsmith_index_u32(1947u, 26u)]), vec4<i32>(u_input.a.x, 0i, 21685i, 5590i))), vec3<f32>(global1.x, -1269f, global1.x), vec4<i32>(2147483647i, -14610i, -2147483647i, arg_3.x)), -1i), global1.x, vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 26u)]))), ~_wgslsmith_mod_u32(5528u, arg_2)) >> (~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(20048u, global0[_wgslsmith_index_u32(arg_2, 17u)], global0[_wgslsmith_index_u32(25374u, 17u)], 55135u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2, 17u)], 17u)], 17u)], 4294967295u, 1u), vec4<u32>(4294967295u, arg_2, 7887u, 58699u)), countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2, 17u)], 17u)], 0u, arg_2, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2, 17u)], 17u)])))) % vec4<u32>(32u));
    let var_1 = arg_3.x;
    let var_2 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 28109u, ~4294967295u), vec3<u32>(arg_2 << (0u % 32u), ~global0[_wgslsmith_index_u32(14139u, 17u)], select(12962u, 48187u, true))));
    let var_3 = Struct_1(~_wgslsmith_div_vec2_u32(~reverseBits(vec2<u32>(var_2, var_2)), var_0.wx), var_0.xyw, vec4<bool>((-102f != _wgslsmith_f_op_f32(1029f * arg_1)) && global2[_wgslsmith_index_u32(~(~40255u), 26u)], global2[_wgslsmith_index_u32(select(abs(var_0.x), _wgslsmith_dot_vec3_u32(max(var_0.xxy, vec3<u32>(arg_2, 59565u, var_0.x)), var_0.zww), select(false & global2[_wgslsmith_index_u32(4294967295u, 26u)], all(vec3<bool>(global2[_wgslsmith_index_u32(var_2, 26u)], global2[_wgslsmith_index_u32(var_2, 26u)], global2[_wgslsmith_index_u32(var_2, 26u)])), all(vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 26u)], false)))), 26u)], true || (~global0[_wgslsmith_index_u32(4294967295u, 17u)] >= _wgslsmith_mod_u32(41074u, var_0.x)), global2[_wgslsmith_index_u32(firstLeadingBit(~var_0.x), 26u)] && !all(vec3<bool>(false, global2[_wgslsmith_index_u32(arg_2, 26u)], false))), min(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(32031i, u_input.b, arg_0.x, -1i) >> (var_0 % vec4<u32>(32u)), vec4<i32>(arg_0.x, 0i, var_1, u_input.a.x) >> (vec4<u32>(0u, 21042u, arg_2, var_0.x) % vec4<u32>(32u))), vec4<i32>(0i, -var_1, -2147483647i, arg_0.x)), firstLeadingBit(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(0i, u_input.b, -37769i, u_input.b), vec4<i32>(-2147483647i, 0i, var_1, arg_0.x), global2[_wgslsmith_index_u32(24647u, 26u)]), vec4<i32>(89065i, 26885i, var_1, arg_3.x), abs(vec4<i32>(arg_3.x, 0i, var_1, 20269i))))));
    let var_4 = global1.x;
    return Struct_4(vec2<i32>(~arg_3.x, -59190i), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 912u), var_0.xwx, !vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(var_2, 26u)], false), var_3.d), var_3), Struct_2(var_3, Struct_1(var_0.yz >> (vec2<u32>(arg_2, 4294967295u) % vec2<u32>(32u)), ~var_3.b, vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(var_2, 26u)], true), vec4<i32>(arg_0.x, var_1, 1i, -26672i))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 251f, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1503f, 409f, 1100f))))), firstLeadingBit(vec4<i32>(i32(-1i) * -2147483647i, arg_3.x << (arg_2 % 32u), -1i, 0i))), ~_wgslsmith_add_i32(var_3.d.x, _wgslsmith_mod_i32(-2147483647i, -1i)) >> (arg_2 % 32u));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_4) -> Struct_2 {
    let var_0 = arg_2.a.x;
    let var_1 = u_input.a.x;
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.b.c.xy) - _wgslsmith_f_op_vec2_f32(min(arg_2.b.c.zz, vec2<f32>(arg_2.b.c.x, -964f))))), vec2<f32>(-949f, 1670f), !all(select(arg_2.b.b.b.c, vec4<bool>(arg_0, arg_2.b.a.a.c.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30556u, 17u)], 26u)], arg_0), true))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.c.x) + arg_1))));
    global1 = arg_2.b.c.xy;
    return func_2(~arg_2.b.d.zzw, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), 25757u, countOneBits(vec2<i32>(-var_0, var_1) & ~_wgslsmith_add_vec2_i32(arg_2.b.a.b.d.zx, vec2<i32>(var_1, u_input.b)))).b.b;
}

fn func_5(arg_0: Struct_2) -> u32 {
    global2 = array<bool, 26>();
    let var_0 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4294967295u, 17u)], 26u)];
    var var_1 = arg_0.a.d.x;
    global2 = array<bool, 26>();
    var_1 = ~u_input.b;
    return global0[_wgslsmith_index_u32(func_2(vec3<i32>(-56747i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, arg_0.a.d.x), vec3<i32>(arg_0.a.d.x, 0i, arg_0.b.d.x)), 1i << (arg_0.a.b.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-global1.x), true))), _wgslsmith_mult_u32(1u, ~countOneBits(arg_0.b.b.x)), firstTrailingBit(vec2<i32>(abs(_wgslsmith_mult_i32(u_input.b, -1i)), 0i))).b.a.b.b.x, 17u)];
}

fn func_1() -> vec2<u32> {
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(func_5(func_4(true, 751f, func_2(u_input.a, -263f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], u_input.a.yx))), max(global0[_wgslsmith_index_u32(1u, 17u)], max(func_5(Struct_2(Struct_1(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(54097u, 17u)]), vec3<u32>(14971u, global0[_wgslsmith_index_u32(41625u, 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1633u, 17u)], 17u)], 17u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)], 26u)], false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 26u)]), vec4<i32>(-55428i, -1i, u_input.a.x, u_input.b)), Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(76970u, 17u)], 17u)], 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66777u, 17u)], 17u)], 17u)], 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 4294967295u), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 26u)]), vec4<i32>(2147483647i, u_input.b, u_input.b, -13784i)))), global0[_wgslsmith_index_u32(43442u, 17u)] ^ global0[_wgslsmith_index_u32(43215u, 17u)]))), countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(89236u, ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35345u, 17u)], 17u)])), 17u)]), 64405u);
    let var_1 = func_2(u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1968f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x)))), global1.x), 35280u, -(vec2<i32>(~2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-52643i, -1i, u_input.b), vec3<i32>(-6377i, 2147483647i, u_input.a.x))) | _wgslsmith_clamp_vec2_i32(u_input.a.zx, -vec2<i32>(u_input.b, u_input.a.x), vec2<i32>(1i, 2147483647i)))).b;
    let var_2 = Struct_4(vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(firstTrailingBit(1i), -_wgslsmith_sub_i32(-4643i, u_input.a.x), _wgslsmith_dot_vec2_i32(-var_1.a.a.d.xz, vec2<i32>(-53485i, u_input.a.x) ^ vec2<i32>(var_1.b.b.d.x, u_input.a.x)))), func_2(u_input.a, global1.x, var_0.x, -(vec2<i32>(-1i) * -vec2<i32>(var_1.d.x, var_1.b.a.d.x))).b, firstLeadingBit(countOneBits(-1i)));
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.b.c.x - 1390f))), 254f));
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, _wgslsmith_f_op_f32(var_2.b.c.x + -1811f))))))));
    return var_1.b.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(-828f)), _wgslsmith_f_op_f32(round(546f)))))));
    let var_0 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 17u)] & 1u, 26u)];
    global0 = array<u32, 17>();
    var var_1 = vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(30462u, 29994u, 4294967295u)), ~(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(11437u, 17u)], 4294967295u))), 17u)] < _wgslsmith_add_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], 24456u), (~0i ^ reverseBits(u_input.a.x)) != 1i, ~_wgslsmith_dot_vec2_u32(func_1(), vec2<u32>(65598u, global0[_wgslsmith_index_u32(74615u, 17u)]) & vec2<u32>(global0[_wgslsmith_index_u32(36942u, 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)])) > ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(0u), 17u)], 17u)], !global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(firstLeadingBit(global0[_wgslsmith_index_u32(0u, 17u)]), ~1u), 17u)], 26u)]);
    var var_2 = _wgslsmith_sub_vec3_u32(~(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59974u, 17u)], 17u)], 17u)], 1u, 1u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)], 17u)], 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], 56729u))) >> (~(vec3<u32>(1788u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(79320u, 17u)], 17u)]) >> (vec3<u32>(0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37291u, 17u)], 17u)], 17u)], 17u)]) % vec3<u32>(32u))) % vec3<u32>(32u))), ~func_2(vec3<i32>(u_input.b, i32(-1i) * -2147483647i, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))), _wgslsmith_div_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2384u, 17u)], 17u)], 39023u), global0[_wgslsmith_index_u32(1u, 17u)]), u_input.a.xy).b.b.a.b);
    var var_3 = select(-vec2<i32>(i32(-1i) * -2147483647i, u_input.a.x), vec2<i32>(u_input.b, ~_wgslsmith_sub_i32(16297i, -2784i)), func_4(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(345f + _wgslsmith_f_op_f32(global1.x * global1.x)) - 1403f), Struct_4(-(~vec2<i32>(u_input.a.x, -17651i)), func_2(reverseBits(vec3<i32>(u_input.b, u_input.b, 46971i)), _wgslsmith_f_op_f32(-188f + global1.x), 1u, u_input.a.xx).b, 2147483647i)).b.c.xw);
    let var_4 = func_2(u_input.a, global1.x, ~4294967295u, ~(~u_input.a.yy)).b.b.a.c.yx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 302f, global1.x, global1.x), vec4<f32>(global1.x, global1.x, global1.x, 915f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1399f, 222f, 752f, global1.x), vec4<f32>(-1608f, -271f, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x))))), ~(~(~(1u ^ global0[_wgslsmith_index_u32(var_2.x, 17u)]))), var_3.x);
}

