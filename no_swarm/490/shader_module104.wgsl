struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true));

var<private> global1: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(0u, 4294967295u), vec2<u32>(20340u, 1u), vec2<u32>(0u, 0u), vec2<u32>(50815u, 4294967295u), vec2<u32>(4294967295u, 59050u), vec2<u32>(0u, 46636u), vec2<u32>(60919u, 44526u), vec2<u32>(0u, 46418u), vec2<u32>(0u, 1u), vec2<u32>(1u, 8302u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 1u));

var<private> global2: Struct_1 = Struct_1(vec4<i32>(2147483647i, 716i, -1i, -1i), true);

var<private> global3: array<vec2<f32>, 10>;

var<private> global4: array<Struct_1, 17>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = global4[_wgslsmith_index_u32(0u, 17u)];
    return Struct_1(_wgslsmith_mult_vec4_i32(~u_input.b, ~(~global2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -988f)), _wgslsmith_f_op_f32(f32(-1f) * -275f)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1339f * 813f)))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<f32> {
    global0 = array<vec3<bool>, 11>();
    global4 = array<Struct_1, 17>();
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(54849u, u_input.c), 17u)];
    let var_1 = !vec2<bool>(any(select(!vec4<bool>(var_0.b, var_0.b, arg_0.b, false), select(vec4<bool>(true, var_0.b, false, true), vec4<bool>(false, true, arg_0.b, true), arg_0.b), vec4<bool>(true, true, arg_0.b, var_0.b))), select(!all(global0[_wgslsmith_index_u32(1u, 11u)]), !(-1000f >= arg_1), func_2(abs(var_0.a.x), vec4<i32>(-33101i, -2147483647i, arg_0.a.x, global2.a.x)).b));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1834f, arg_1, arg_1, arg_1)))))))));
    return var_2.wzz;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(arg_3, _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0 << (vec4<u32>(4294967295u, 3759u, 4294967295u, 4294967295u) % vec4<u32>(32u)), ~arg_0, ~vec4<u32>(4294967295u, 38381u, arg_0.x, u_input.c)), select(arg_0, abs(arg_3), true), select(vec4<u32>(u_input.c, 39588u, u_input.c, 1u), arg_0, false) >> (vec4<u32>(0u, u_input.c, u_input.c, 4294967295u) % vec4<u32>(32u)))), 17u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1709f, 1000f, 1000f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 457f, -339f)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(399f, -307f, -2137f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1338f, 1000f, -1513f)), true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(func_2(u_input.b.x, global2.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    global2 = global4[_wgslsmith_index_u32(~arg_0.x, 17u)];
    global1 = array<vec2<u32>, 12>();
    global1 = array<vec2<u32>, 12>();
    return global4[_wgslsmith_index_u32(~4294967295u, 17u)];
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> f32 {
    global3 = array<vec2<f32>, 10>();
    global3 = array<vec2<f32>, 10>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(119f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(arg_3, 550f)).x) * _wgslsmith_f_op_f32(f32(-1f) * -560f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1508f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(806f)) + _wgslsmith_f_op_f32(1352f * -965f)) - 1250f)));
    global2 = Struct_1(vec4<i32>(countOneBits(func_2(-25143i, vec4<i32>(global2.a.x, u_input.b.x, -38467i, global2.a.x)).a.x), _wgslsmith_mod_i32(abs(arg_3.a.x), -25742i) >> (~select(u_input.c, arg_1, true) % 32u), _wgslsmith_div_i32(countOneBits(-2147483647i), ~_wgslsmith_div_i32(arg_3.a.x, global2.a.x)), 0i), !global2.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -153f) * -655f), _wgslsmith_f_op_vec3_f32(func_3(func_1(vec4<u32>(u_input.c, u_input.c, arg_1, 4294967295u), global2.a.ww, arg_3.b, vec4<u32>(arg_1, 36620u, arg_1, arg_1)), _wgslsmith_div_f32(755f, 207f))).x)))));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_1 {
    global0 = array<vec3<bool>, 11>();
    let var_0 = Struct_1(global2.a, !(!(!global2.b)) && all(arg_2));
    return Struct_1(global2.a, any(!vec3<bool>(all(arg_2), true, arg_1 > 293f)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 17>();
    let var_0 = func_5(~0u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -468f))), -890f)), !vec4<bool>(true, global2.b, true, all(select(vec4<bool>(false, false, global2.b, false), vec4<bool>(false, global2.b, false, false), true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_4(true, u_input.c, countOneBits(-1i), func_1(vec4<u32>(u_input.c, u_input.c, 0u, 1u), vec2<i32>(global2.a.x, 10402i), global2.b, vec4<u32>(u_input.c, u_input.c, 48813u, u_input.c)))), _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-718f, 1623f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -654f) + 1f)) * vec3<f32>(-372f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1243f)), _wgslsmith_f_op_f32(f32(-1f) * -299f))));
    global3 = array<vec2<f32>, 10>();
    var var_1 = vec3<u32>(~max(u_input.c ^ 34290u, firstTrailingBit(u_input.c >> (55440u % 32u))), u_input.c, 0u);
    var var_2 = _wgslsmith_dot_vec2_i32(-(~_wgslsmith_mult_vec2_i32(global2.a.xz, global2.a.yx) ^ countOneBits(vec2<i32>(u_input.b.x, -27253i))), vec2<i32>(12313i, var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.c, reverseBits(14811u)), 815f, -u_input.b.x);
}

