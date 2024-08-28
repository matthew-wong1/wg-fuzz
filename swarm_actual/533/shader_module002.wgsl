struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: array<f32, 8> = array<f32, 8>(679f, -536f, -1295f, -980f, -1000f, 498f, -564f, -579f);

var<private> global2: vec2<f32> = vec2<f32>(938f, 412f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> vec2<f32> {
    var var_0 = countOneBits(-((_wgslsmith_div_vec2_i32(vec2<i32>(-29704i, -77054i), vec2<i32>(33816i, -1i)) << ((vec2<u32>(arg_0.a.b.x, 0u) >> (vec2<u32>(20030u, arg_0.a.b.x) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (select(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(arg_0.a.b.x, u_input.a.x), select(true, arg_1.x, arg_2.c.x)) % vec2<u32>(32u))));
    var_0 = vec2<i32>(-840i, ~var_0.x);
    var var_1 = global0[_wgslsmith_index_u32((~(~abs(arg_0.a.b.x)) ^ arg_0.a.b.x) | _wgslsmith_add_u32(countOneBits(arg_0.a.b.x), u_input.a.x), 32u)];
    var var_2 = global0[_wgslsmith_index_u32(35550u, 32u)];
    var_0 = var_1.a.c.xw;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a.x)))), 715f);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1249f, global1[_wgslsmith_index_u32(arg_1, 8u)])) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(917f, -589f) * vec2<f32>(-1302f, global2.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, global2.x), vec2<f32>(1626f, 876f), vec2<bool>(false, arg_0))))))) + _wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_2(_wgslsmith_f_op_f32(global2.x - 1058f), arg_2.xxz | arg_2.wxy, reverseBits(vec4<i32>(-5587i, -1i, 2147483647i, 18010i)), Struct_1(vec2<f32>(global2.x, 731f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], -409f, 1018f, global2.x), vec3<bool>(false, true, arg_0), vec2<bool>(arg_0, true)), Struct_1(vec2<f32>(global2.x, 406f), vec4<f32>(-146f, global1[_wgslsmith_index_u32(18620u, 8u)], 291f, -150f), vec3<bool>(false, true, arg_0), vec2<bool>(arg_0, arg_0)))), select(vec2<bool>(global2.x == global1[_wgslsmith_index_u32(arg_1, 8u)], arg_0), !vec2<bool>(false, arg_0), arg_0), Struct_1(vec2<f32>(-1000f, global2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], 842f, -234f, -1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global2.x, global1[_wgslsmith_index_u32(arg_2.x, 8u)], global1[_wgslsmith_index_u32(0u, 8u)]))), !select(vec3<bool>(true, true, arg_0), vec3<bool>(false, true, true), vec3<bool>(true, true, arg_0)), vec2<bool>(true, arg_0 && true)), -1i)));
    var var_1 = ~4294967295u;
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), _wgslsmith_f_op_f32(trunc(594f))))) - _wgslsmith_div_vec2_f32(vec2<f32>(1888f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(586f, -759f), vec2<f32>(-1920f, var_0.x), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1826f, var_0.x) - vec2<f32>(1111f, var_0.x)), vec2<bool>(false, arg_0))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(524f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(4294967295u), 8u)]))));
    return -1038f;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> vec2<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(any(select(vec4<bool>(arg_2, true, false, arg_2), vec4<bool>(arg_2, false, false, true), arg_2)), _wgslsmith_sub_u32(4294967295u ^ u_input.a.x, u_input.a.x), select(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 28659u, u_input.a.x, u_input.a.x), vec4<bool>(arg_1.d.x, false, true, arg_2)) >> (vec4<u32>(61102u, 54963u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))))), firstTrailingBit(vec3<u32>(~max(u_input.a.x, u_input.a.x), ~1u, firstLeadingBit(~4294967295u))), select(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_0.x, arg_0.x, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, 0i, arg_0.x, -32564i), arg_0)) | arg_0, arg_0, !(!(!vec4<bool>(false, arg_2, arg_1.d.x, false)))), arg_1, arg_1);
    global1 = array<f32, 8>();
    global1 = array<f32, 8>();
    let var_1 = 0i;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, -2763f) + arg_1.a)), var_0.e.a, all(select(vec3<bool>(var_0.d.d.x, true, var_0.e.d.x), arg_1.c, vec3<bool>(var_0.e.d.x, true, false))))) + arg_1.b.zx));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(-726f)), _wgslsmith_f_op_f32(step(global2.x, 1077f)))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(countOneBits(firstLeadingBit(vec4<i32>(-3455i, 2147483647i, -6515i, -1i))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)])), vec4<f32>(global2.x, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], -103f, global2.x), vec3<bool>(true, true, true), vec2<bool>(true, true)), any(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1[_wgslsmith_index_u32(0u, 8u)]) - vec2<f32>(-1090f, 2317f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(~vec3<u32>(1u, 0u, 1u) ^ vec3<u32>(u_input.a.x, 10614u, u_input.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global2.x))), global1[_wgslsmith_index_u32(4294967295u, 8u)])), global1[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_f_op_f32(-global2.x));
}

