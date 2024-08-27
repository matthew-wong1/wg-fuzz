struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22>;

var<private> global1: f32 = 800f;

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    global1 = 298f;
    let var_0 = ~_wgslsmith_add_vec3_u32(max(~u_input.c.xww, min(vec3<u32>(24818u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.d, 40852u, u_input.b.x))) >> (_wgslsmith_mult_vec3_u32(~u_input.c.yyw, u_input.b.zwy) % vec3<u32>(32u)), vec3<u32>(~(~u_input.c.x), _wgslsmith_clamp_u32(67741u, _wgslsmith_div_u32(u_input.b.x, 85010u), ~u_input.d), ~_wgslsmith_sub_u32(u_input.d, u_input.c.x)));
    var var_1 = Struct_2(true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-972f - 123f))), 516f));
    let var_2 = Struct_2(!select(true, true, all(select(vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(true, var_1.a, false), var_1.a))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(global2.a, global2.a)), _wgslsmith_f_op_f32(-global2.a), var_1.b.x), _wgslsmith_f_op_vec3_f32(max(var_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, -782f, -737f) - var_1.b))))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(896f + var_1.b.x)))))));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-466f, var_1.b.x) * var_2.b.zz) * vec2<f32>(var_1.b.x, -784f)))))));
}

fn func_2() -> bool {
    global0 = array<vec4<i32>, 22>();
    global2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.a, _wgslsmith_f_op_f32(ceil(210f)))) - -817f))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(330f, -335f), vec2<f32>(1429f, global2.a))) + _wgslsmith_f_op_vec2_f32(func_3())) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global2.a))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a, -1000f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-239f, global2.a)))))));
    global1 = 484f;
    let var_1 = Struct_2(reverseBits(~(~u_input.d)) != countOneBits(u_input.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-759f, 1621f, -446f))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(min(global2.a, global2.a)), _wgslsmith_f_op_f32(-1187f + 356f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_div_f32(global2.a, var_0.x), global2.a) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, var_0.x, 764f) * vec3<f32>(374f, var_0.x, var_0.x)))))));
    return any(vec2<bool>(true, false));
}

fn func_1() -> bool {
    global0 = array<vec4<i32>, 22>();
    var var_0 = any(select(vec2<bool>(func_2(), countOneBits(u_input.c.x) != 1u), vec2<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false))), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))), true));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i >> (1u % 32u), u_input.a.x, -3483i, max(_wgslsmith_dot_vec2_i32(-u_input.a, _wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 0i))), -18328i)), max(-_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.a.x, 23906i, 48704i, -1i), vec4<i32>(-2147483647i, u_input.a.x, -1i, u_input.a.x), vec4<bool>(false, false, true, true)), firstLeadingBit(global0[_wgslsmith_index_u32(0u, 22u)])), abs(global0[_wgslsmith_index_u32(u_input.b.x, 22u)])));
    var var_2 = Struct_2(!select(true, select(true, false, any(vec3<bool>(false, false, false))), true), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(-global2.a)), -789f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_2 = Struct_2(func_2(), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(var_2.b, var_2.b, var_2.a)))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2.a;
    var var_0 = _wgslsmith_sub_vec2_u32(u_input.c.xx, _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.c.yy, firstTrailingBit(u_input.c.xy)), _wgslsmith_clamp_vec2_u32(~u_input.b.zw, u_input.c.zz, ~u_input.b.yz) ^ ~vec2<u32>(u_input.b.x, 38279u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global2.a));
    let var_2 = Struct_2(!(!func_1() && any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.a)), global2.a, _wgslsmith_f_op_f32(var_1.a + var_1.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, var_1.a, 1491f)))));
    let var_3 = vec3<i32>(1i, u_input.a.x, min(-2147483647i, ~(-u_input.a.x)));
    let var_4 = Struct_1(515f);
    var_0 = vec2<u32>(u_input.c.x, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(-2016f, var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-945f)) + -533f)), 4294967295u);
}

