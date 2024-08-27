struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32;

var<private> global2: array<i32, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-558f)) * _wgslsmith_div_f32(473f, -567f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1146f, -542f)) - _wgslsmith_f_op_f32(f32(-1f) * -1101f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(572f - 115f)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(467f, _wgslsmith_f_op_f32(-1741f - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(492f + 698f)))), 43458i, countOneBits(_wgslsmith_mult_vec3_i32(max(vec3<i32>(global2[_wgslsmith_index_u32(66699u, 16u)], -19385i, global2[_wgslsmith_index_u32(u_input.a, 16u)]) | vec3<i32>(-2147483647i, 2147483647i, -23182i), -vec3<i32>(global2[_wgslsmith_index_u32(1u, 16u)], 37425i, -2147483647i)), select(vec3<i32>(-1841i, -2147483647i, -5661i), max(vec3<i32>(global2[_wgslsmith_index_u32(131762u, 16u)], 18550i, global2[_wgslsmith_index_u32(0u, 16u)]), vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 16u)], -3738i, global2[_wgslsmith_index_u32(4294967295u, 16u)])), vec3<bool>(true, true, true)))));
    let var_2 = Struct_1(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(1195f + -596f), var_1.a.x), ~firstTrailingBit(var_1.c.x >> (_wgslsmith_add_u32(u_input.c.x, u_input.b) % 32u)), var_1.c);
    var var_3 = true;
    var var_4 = select(~(~(~max(u_input.c.wx, vec2<u32>(u_input.a, 1u)))), countOneBits(u_input.c.yz), true);
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f - var_2.a.x))), _wgslsmith_f_op_f32(-var_0.x))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(535f * -208f), _wgslsmith_f_op_f32(step(163f, 718f)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-290f, 1000f), -307f)), u_input.a != ~15461u))), -440f, true));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, var_0), vec2<f32>(var_0, 1000f))))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, var_1.x, var_1.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1771f, var_0, 312f))), vec3<f32>(_wgslsmith_div_f32(-471f, var_1.x), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -260f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, -128f), vec3<f32>(299f, 337f, -1000f)) * _wgslsmith_f_op_vec3_f32(func_3())), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_0, -675f) + vec3<f32>(1105f, -1382f, var_0)))))), global2[_wgslsmith_index_u32(countOneBits(1u) << (reverseBits(_wgslsmith_mod_u32(arg_0.x, 15529u)) % 32u), 16u)] << (~19541u % 32u), ~vec3<i32>(reverseBits(40924i), global2[_wgslsmith_index_u32(~arg_0.x, 16u)], 51227i));
    global1 = _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-206f - var_0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    global2 = array<i32, 16>();
    return var_2;
}

fn func_1() -> f32 {
    global2 = array<i32, 16>();
    let var_0 = func_2(select(vec2<u32>(0u, u_input.c.x), ~countOneBits(vec2<u32>(0u, u_input.c.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), false))));
    let var_1 = var_0.b;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -289f))), 243f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(min(1000f, 1330f));
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-702f, 989f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-604f * -1085f), _wgslsmith_f_op_f32(-919f - -2164f))), _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-2721f - 412f), -1191f, -1500f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(666f, 1000f, 548f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -197f, -567f), vec3<f32>(340f, 1037f, 898f), false)), true)))), 2147483647i, _wgslsmith_mult_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)]) ^ vec3<i32>(global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(47254u, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)]), max(vec3<i32>(global2[_wgslsmith_index_u32(132555u, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)], 0i), vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)]))), func_2(select(vec2<u32>(u_input.a, u_input.b) | vec2<u32>(1u, 37492u), ~u_input.c.xy, true)).c));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(605f, -1891f) * 847f))));
    global2 = array<i32, 16>();
    global0 = 38203u;
    global0 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, 1369f, _wgslsmith_f_op_f32(-203f * var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x * 247f))), vec4<f32>(var_0.a.x, 1f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3()).x - _wgslsmith_f_op_f32(var_0.a.x * 1179f)))), _wgslsmith_f_op_f32(round(-1859f)), -2147483647i, -(~(2147483647i >> (_wgslsmith_dot_vec2_u32(u_input.c.yx, u_input.c.xy) % 32u))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 1000f, 144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1531f, -1000f, -927f, 2273f))))));
}

