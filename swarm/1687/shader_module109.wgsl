struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(vec2<f32>(638f, 323f), Struct_2(vec3<u32>(917u, 4294967295u, 159936u), -462f, -1i, 20011i, false), Struct_1(649f), vec2<i32>(15022i, 0i)), Struct_3(vec2<f32>(1000f, -1000f), Struct_2(vec3<u32>(49245u, 0u, 0u), -1000f, -1i, -39784i, false), Struct_1(-1496f), vec2<i32>(-1i, 55775i)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.d.b.b - -775f), _wgslsmith_f_op_f32(exp2(global0.b.b)), _wgslsmith_f_op_f32(-global0.d.b.b), _wgslsmith_f_op_f32(-1076f * global1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-2190f + 502f))), !select(select(vec4<bool>(false, global0.b.e, true, global0.b.e), vec4<bool>(false, global0.d.b.e, true, global0.b.e), true), vec4<bool>(true, global0.d.b.e, global0.a.x, global0.a.x), global0.d.b.e))));
    global2 = array<Struct_3, 2>();
    let var_1 = _wgslsmith_mult_i32(7610i, _wgslsmith_mod_i32(abs(_wgslsmith_mult_i32(global0.c, 2147483647i) & global0.c), global0.b.c));
    var var_2 = vec4<i32>(global0.d.d.x >> (u_input.a.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(5084i, 0i), -(~select(vec2<i32>(global0.d.b.d, global0.d.d.x), vec2<i32>(global0.c, -1i), global0.a.yz))), global0.b.d, var_1);
    var var_3 = global0.d.c;
    return global0.a;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: bool) -> Struct_4 {
    var var_0 = !(!global0.a.zz);
    var var_1 = global0.d.b;
    var var_2 = vec4<bool>(true, var_0.x, true | (4294967295u >= _wgslsmith_dot_vec3_u32(vec3<u32>(103279u, arg_1, 0u), _wgslsmith_clamp_vec3_u32(global0.d.b.a, vec3<u32>(global0.d.b.a.x, 70155u, 0u), u_input.a))), true);
    let var_3 = Struct_4(var_2.wx, ~(-(~(-13358i))));
    global0 = Struct_5(func_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(arg_0.x * 182f)))), global0.b, -(i32(-1i) * -reverseBits(global0.d.b.d)), global2[_wgslsmith_index_u32(min(var_1.a.x, 0u), 2u)]);
    return var_3;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_4) -> i32 {
    let var_0 = !func_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b.b)) * 621f)));
    global0 = Struct_5(var_0, global0.b, global0.c, global2[_wgslsmith_index_u32(arg_1.x, 2u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-422f, _wgslsmith_f_op_f32(-647f - -369f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * global0.d.b.b)))));
    var var_2 = ~0u;
    var var_3 = Struct_1(-732f);
    return -firstLeadingBit(global0.d.d.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: i32) -> vec3<bool> {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -global0.b.c, 1i), select(global0.b.c, ~global0.d.b.c, !arg_1), global0.b.c, firstTrailingBit(func_4(-1000f, min(vec2<u32>(1u, u_input.a.x), global0.d.b.a.yx), func_2(vec4<f32>(-2018f, 160f, 1276f, global0.b.b), 71751u, true)) & ((arg_2 >> (global0.d.b.a.x % 32u)) ^ -26859i)));
    var var_1 = max(~(~(~4294967295u)), u_input.a.x) >> (countOneBits(23556u) % 32u);
    var var_2 = global0.d.c;
    global0 = Struct_5(vec3<bool>(true, !arg_0.x, !(659f >= _wgslsmith_f_op_f32(635f + global1.x))), global0.b, global0.d.b.d, global2[_wgslsmith_index_u32(1u, 2u)]);
    var var_3 = Struct_2(select(abs(~(~u_input.a)), global0.b.a, true), var_2.a, _wgslsmith_dot_vec3_i32(var_0.wxy, ~(vec3<i32>(var_0.x, 9155i, global0.b.d) ^ vec3<i32>(51707i, 2147483647i, var_0.x))), arg_2, arg_1);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(countOneBits(_wgslsmith_div_u32(~u_input.a.x ^ ~global0.d.b.a.x, 1u)), 84376u, ~4294967295u, u_input.a.x);
    let var_1 = select(countOneBits(vec3<i32>(15600i, global0.b.c, -29187i)), vec3<i32>(min(select(-global0.d.d.x, i32(-1i) * -32682i, true), _wgslsmith_add_i32(2147483647i, -1i)), countOneBits(global0.b.c), 1i), func_1(select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, global0.b.e, true), vec3<bool>(false, false, global0.b.e), vec3<bool>(true, global0.d.b.e, global0.a.x)), global0.a), global0.a, select(select(vec3<bool>(false, global0.b.e, global0.a.x), global0.a, true), global0.a, vec3<bool>(true, false, false))), false, 44068i));
    global2 = array<Struct_3, 2>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.d.b.b))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x * 632f), _wgslsmith_f_op_f32(-global0.b.b), select(false, global0.b.e, false))), global0.d.b.b))) * _wgslsmith_f_op_f32(-global0.d.b.b));
    let var_3 = _wgslsmith_mult_u32(~44358u, ~u_input.a.x);
    global0 = Struct_5(global0.a, Struct_2(vec3<u32>(~global0.b.a.x, 16568u, 8213u), global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-24816i | var_1.x, ~(-29346i), select(var_1.x, 0i, true), 16779i), firstTrailingBit(vec4<i32>(-4995i, var_1.x, 0i, var_1.x) ^ vec4<i32>(var_1.x, global0.c, var_1.x, -28579i))), global0.d.b.d, true), var_1.x, global0.d);
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, _wgslsmith_f_op_f32(-1266f * var_2), 546f, _wgslsmith_f_op_f32(max(1355f, -168f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-805f, var_2), global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.b - global1.x)), 1018f, -1012f)));
    let var_4 = -((~(~1i) & global0.d.d.x) | countOneBits(~(var_1.x >> (u_input.a.x % 32u))));
    var var_5 = global0.d.c;
    let x = u_input.a;
    s_output = StorageBuffer(global1.xw, ~u_input.a.yx >> (~(vec2<u32>(0u, 0u) & abs(vec2<u32>(u_input.a.x, 0u))) % vec2<u32>(32u)));
}

