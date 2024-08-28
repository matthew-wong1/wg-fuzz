struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30>;

var<private> global1: array<u32, 15>;

var<private> global2: Struct_2;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> vec4<f32> {
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(global2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a) - _wgslsmith_f_op_vec3_f32(global2.a - global2.a)), !global2.c.x)), global2.a)), global2.e, !global2.c, global2.e, Struct_1(1u));
    let var_0 = countOneBits(u_input.b);
    global0 = array<vec4<i32>, 30>();
    global1 = array<u32, 15>();
    var var_1 = ~(~vec2<u32>(0u, 18002u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, -117f, global2.a.x, global2.a.x) * vec4<f32>(global2.a.x, -217f, -1462f, global2.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, global2.a.x, 1055f, global2.a.x))), vec4<f32>(global2.a.x, 1920f, _wgslsmith_f_op_f32(select(global2.a.x, -325f, false)), _wgslsmith_f_op_f32(-global2.a.x)), !select(vec4<bool>(true, global2.c.x, true, false), vec4<bool>(global2.c.x, false, global2.c.x, global2.c.x), vec4<bool>(global2.c.x, global2.c.x, true, global2.c.x))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: bool) -> Struct_3 {
    let var_0 = arg_1.c;
    let var_1 = -1438f;
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1486f, 1061f, global2.a.x)), Struct_1(~arg_1.a), global2.c, Struct_1(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(1u, 0u)), vec2<u32>(4294967295u, 4294967295u))), arg_1.c);
    let var_2 = !any(select(vec4<bool>(any(vec3<bool>(global2.c.x, global2.c.x, true)), true, global2.c.x, u_input.c <= -35514i), select(vec4<bool>(false, arg_2, false, arg_2), !vec4<bool>(true, true, global2.c.x, false), global2.c.x), all(global2.c)));
    let var_3 = ~((u_input.a ^ max(u_input.a & vec4<u32>(4294967295u, 36384u, var_0.a, global1[_wgslsmith_index_u32(4294967295u, 15u)]), firstTrailingBit(vec4<u32>(66667u, global2.b.a, 4294967295u, global1[_wgslsmith_index_u32(9272u, 15u)])))) >> (_wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(1u, 0u, 58551u, 12162u)), countOneBits(vec4<u32>(3144u, 0u, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 30103u) & vec4<u32>(90058u, 4294967295u, var_0.a, 31960u))) % vec4<u32>(32u)));
    return Struct_3(0u, -449f, u_input.d.x);
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_1) -> Struct_3 {
    return Struct_3(global2.b.a, _wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1277f - arg_2.b), _wgslsmith_f_op_f32(-947f + global2.a.x), global2.c.x)))), firstTrailingBit(u_input.d.x >> (u_input.b.x % 32u)));
}

fn func_1(arg_0: bool) -> f32 {
    global1 = array<u32, 15>();
    let var_0 = func_4(global1[_wgslsmith_index_u32(~1u, 15u)], vec3<i32>(-3747i, u_input.d.x, u_input.d.x) << (reverseBits(u_input.a.yww) % vec3<u32>(32u)), func_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2()))), Struct_4(4294967295u, firstTrailingBit(min(63462u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)])), global2.b), all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, arg_0), vec3<bool>(true, true, global2.c.x))) | true), global2.d);
    global0 = array<vec4<i32>, 30>();
    let var_1 = global2.c.x;
    var var_2 = Struct_3(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2.a.x, -998f, 279f) + vec4<f32>(global2.a.x, 250f, var_0.b, var_0.b)), Struct_4(76242u, 38469u, global2.d), global2.c.x).b) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.a.x, _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * global2.a.x)))), u_input.c);
    return -294f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a.x, _wgslsmith_f_op_f32(sign(422f))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, global2.a.x, global2.a.x, -926f)) + _wgslsmith_div_vec4_f32(vec4<f32>(global2.a.x, 113f, -1000f, global2.a.x), vec4<f32>(global2.a.x, -545f, 2449f, global2.a.x)))))));
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~global2.b.a, u_input.a.x << ((global2.d.a & 73291u) % 32u)), global2.e.a, _wgslsmith_dot_vec2_u32(~u_input.b, ~u_input.a.wy) << (~(~1u) % 32u)), 30u)];
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.x, global2.a.x)), _wgslsmith_f_op_f32(round(-1014f)), _wgslsmith_f_op_f32(873f * var_1.x), _wgslsmith_f_op_f32(func_1(false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-992f, var_1.x, var_1.x, global2.a.x)))), !global2.c.x && global2.c.x)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1264f, global2.a.x, -1357f, var_1.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-291f, 924f, -355f, var_1.x), vec4<f32>(var_1.x, 1000f, -1785f, global2.a.x), false)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(331f, _wgslsmith_f_op_vec4_f32(func_2()).x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, global2.a.x) * _wgslsmith_f_op_f32(-300f + global2.a.x)), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, global2.a.x) + var_1.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(837f, _wgslsmith_f_op_f32(trunc(global2.a.x)), -287f, _wgslsmith_f_op_f32(-global2.a.x))))), global2.c.x));
    var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-140f - 1088f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2063f)), 1544f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x - 1020f)), _wgslsmith_f_op_f32(exp2(var_1.x)))))));
    var_0 = -565f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(1u, 15u)]) << (_wgslsmith_div_u32(~global2.b.a, 0u) % 32u)), min(_wgslsmith_sub_vec3_u32(u_input.a.xyx, max(u_input.a.wyx >> (u_input.a.yyy % vec3<u32>(32u)), vec3<u32>(global1[_wgslsmith_index_u32(0u, 15u)], 86960u, u_input.a.x) << (vec3<u32>(u_input.a.x, 32173u, 14552u) % vec3<u32>(32u)))), abs(_wgslsmith_sub_vec3_u32(u_input.a.zzy, u_input.a.xzy)) ^ _wgslsmith_div_vec3_u32(max(u_input.a.yzw, u_input.a.wzy), vec3<u32>(global1[_wgslsmith_index_u32(global2.d.a, 15u)], 31804u, u_input.b.x))));
}

