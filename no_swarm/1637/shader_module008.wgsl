struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global1: array<vec2<f32>, 26>;

var<private> global2: vec3<bool>;

var<private> global3: array<u32, 12> = array<u32, 12>(1u, 8873u, 7435u, 4294967295u, 70387u, 46144u, 13567u, 38917u, 1u, 3886u, 48476u, 16338u);

var<private> global4: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool, arg_3: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_div_f32(-1000f, 1342f);
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.a.x, -1923f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_3, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 12u)], 26u)], global2.xz)) * arg_3)))));
    var var_1 = 197f == _wgslsmith_div_f32(-594f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(295f)) * arg_3.x) * _wgslsmith_f_op_f32(f32(-1f) * -128f)));
    let var_2 = vec3<bool>(all(select(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 5u)], global2.zx, any(!vec4<bool>(arg_2, global2.x, global2.x, global2.x)))), arg_2, !any(global0[_wgslsmith_index_u32(u_input.c.x, 5u)]));
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0.a.xx))));
    return !(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b.x, u_input.c.x), u_input.c.x, _wgslsmith_sub_u32(max(4294967295u, u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 13902u, 38879u), u_input.c))) < (~(0u >> (u_input.b.x % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(59073u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36025u, 12u)], 12u)], 12u)], global3[_wgslsmith_index_u32(1u, 12u)]), vec4<u32>(u_input.c.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 12u)], 12u)], arg_1.x, 18191u)) % 32u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> bool {
    global0 = array<vec2<bool>, 5>();
    global1 = array<vec2<f32>, 26>();
    let var_0 = Struct_3(vec4<bool>(!(!all(arg_1)), all(select(select(arg_1, vec4<bool>(false, arg_1.x, true, true), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), !arg_1, !vec4<bool>(arg_1.x, false, true, true))), !func_3(arg_0, vec2<u32>(4294967295u, 15363u), u_input.d == u_input.e, vec2<f32>(303f, 214f)), global2.x & arg_1.x));
    global0 = array<vec2<bool>, 5>();
    let var_1 = vec4<f32>(global4.a.x, 1300f, _wgslsmith_div_f32(global4.a.x, arg_0.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-383f * -565f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -745f)))), _wgslsmith_f_op_f32(-1764f + arg_0.a.x))));
    return any(select(select(vec2<bool>(true || global2.x, false), !select(global2.xy, vec2<bool>(global2.x, var_0.a.x), false), vec2<bool>(select(var_0.a.x, arg_1.x, var_0.a.x), all(arg_1.yxz))), vec2<bool>(!var_0.a.x, all(select(vec4<bool>(var_0.a.x, var_0.a.x, arg_1.x, false), arg_1, arg_1))), select(arg_1.wz, vec2<bool>(arg_1.x || true, true), true)));
}

fn func_1() -> vec4<f32> {
    global2 = !select(vec3<bool>(true, !(!global2.x), !(!global2.x)), vec3<bool>(global2.x, true, !all(vec3<bool>(false, global2.x, true))), select(select(select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(false, false, global2.x), vec3<bool>(global2.x, true, global2.x)), !vec3<bool>(global2.x, false, true), true), vec3<bool>(func_2(Struct_2(vec3<f32>(-1000f, 1876f, 1223f)), vec4<bool>(true, false, false, global2.x)), !global2.x, !global2.x), vec3<bool>(any(vec4<bool>(true, global2.x, global2.x, global2.x)), func_2(Struct_2(vec3<f32>(global4.a.x, global4.a.x, global4.a.x)), vec4<bool>(false, global2.x, global2.x, true)), global2.x != true)));
    let var_0 = abs(_wgslsmith_add_i32(max(max(39515i >> (u_input.b.x % 32u), -18896i), reverseBits(-45914i)), -2147483647i >> (select(~0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~0u, 12u)], 12u)], true) % 32u)));
    global1 = array<vec2<f32>, 26>();
    global2 = vec3<bool>(!global2.x, global2.x, global2.x);
    var var_1 = ~select(~(-abs(vec2<i32>(u_input.d, 0i))), -reverseBits(max(vec2<i32>(var_0, -1i), vec2<i32>(u_input.d, u_input.d))), vec2<bool>(all(select(global2.xx, global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global2.x)), true));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1107f, global4.a.x, global4.a.x, 262f), vec4<f32>(561f, global4.a.x, 1097f, global4.a.x), global2.x))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.x, _wgslsmith_f_op_f32(max(global4.a.x, 375f)), 345f, 188f)))));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: vec4<f32>) -> vec4<f32> {
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xx) * vec2<f32>(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(arg_2.x + 201f)))));
    global1 = array<vec2<f32>, 26>();
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 26u)]);
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -373f) - _wgslsmith_f_op_f32(-var_0.a.x)) * 1f), _wgslsmith_f_op_f32(max(994f, -577f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.x - _wgslsmith_f_op_f32(-arg_3.x))), 641f, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -530f))), false)));
    global3 = array<u32, 12>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 973f, var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, arg_3.x, var_1.x, arg_2.x))) - _wgslsmith_f_op_vec4_f32(var_1 - arg_3)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<f32>) -> StorageBuffer {
    global3 = array<u32, 12>();
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1005f, arg_2.x) * global4.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec4_f32(func_4(u_input.c.x, vec4<f32>(423f, arg_2.x, global4.a.x, -1357f), arg_0, vec4<f32>(-1118f, arg_0.x, 321f, 418f))).wx, global4.a, arg_1 | true))))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(sign(arg_0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.a))));
    var var_1 = !arg_1;
    global1 = array<vec2<f32>, 26>();
    return StorageBuffer(~global3[_wgslsmith_index_u32(~((u_input.c.x ^ u_input.b.x) ^ global3[_wgslsmith_index_u32(u_input.c.x, 12u)]), 12u)], vec3<u32>(1u, global3[_wgslsmith_index_u32(u_input.c.x, 12u)], _wgslsmith_mod_u32(u_input.b.x, ~countOneBits(u_input.b.x))), 34127u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(456u, 4294967295u, u_input.c.x, global3[_wgslsmith_index_u32(4294967295u, 12u)])), vec4<u32>(u_input.b.x, 40833u, global3[_wgslsmith_index_u32(6764u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)]) >> (vec4<u32>(1u, global3[_wgslsmith_index_u32(58465u, 12u)], u_input.b.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_mult_u32(abs(u_input.c.x), global3[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(53189u, 12u)]), 12u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_div_u32(4294967295u, u_input.c.x), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, abs(global3[_wgslsmith_index_u32(4294967295u, 12u)]), ~global3[_wgslsmith_index_u32(4294967295u, 12u)]))), u_input.c);
    let var_1 = _wgslsmith_sub_vec2_u32(countOneBits(~u_input.b), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(50944u, 12u)], global3[_wgslsmith_index_u32(58569u, 12u)]), min(u_input.b.x, 846u)) >> ((u_input.c.zx << (var_0.zy % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(50376u, 4294967295u) << (max(~var_0.zx, vec2<u32>(u_input.c.x, 4294967295u)) % vec2<u32>(32u))));
    let var_2 = ~vec3<i32>(0i & _wgslsmith_add_i32(u_input.a, -2147483647i), max(-(i32(-1i) * -81065i), abs(-58334i)), -22126i);
    global3 = array<u32, 12>();
    var var_3 = 268f;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(~firstTrailingBit(var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1092f, global4.a.x, -351f, 400f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1210f, global4.a.x, -1133f, 2036f) - vec4<f32>(global4.a.x, global4.a.x, global4.a.x, global4.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * vec4<f32>(global4.a.x, 329f, global4.a.x, global4.a.x))))), func_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global4.a.x, global4.a.x, global4.a.x), vec3<f32>(global4.a.x, 1599f, global4.a.x)) + vec3<f32>(global4.a.x, global4.a.x, -328f))), reverseBits(~(~vec2<u32>(global3[_wgslsmith_index_u32(1u, 12u)], var_1.x))), (~u_input.a << (u_input.c.x % 32u)) != _wgslsmith_div_i32(_wgslsmith_mult_i32(var_2.x, -2147483647i), 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2281f, global4.a.x) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4.a.x, 847f), global1[_wgslsmith_index_u32(u_input.b.x, 26u)], global2.xz))))), vec3<f32>(global4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) - _wgslsmith_f_op_f32(-global4.a.x))), global4.a.x));
}

