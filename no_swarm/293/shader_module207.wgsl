struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 5>;

var<private> global3: vec2<f32>;

var<private> global4: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(-1384f, 104f), vec2<f32>(-577f, -1678f), vec2<f32>(298f, 2410f), vec2<f32>(-1000f, 1314f), vec2<f32>(996f, 1182f), vec2<f32>(912f, -1000f), vec2<f32>(-812f, 478f), vec2<f32>(-416f, -1238f), vec2<f32>(-121f, 788f), vec2<f32>(1190f, 502f), vec2<f32>(497f, 836f), vec2<f32>(613f, -696f), vec2<f32>(-727f, -325f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(u_input.e, 5u)];
    global1 = global2[_wgslsmith_index_u32(~4294967295u, 5u)];
    global2 = array<Struct_2, 5>();
    var var_1 = global1.b.b;
    global2 = array<Struct_2, 5>();
    return global1.b;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_4) -> Struct_3 {
    global0 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, global3.x) + -785f) == 258f, false, arg_2.d, func_2().a.x);
    global0 = !select(select(select(select(vec4<bool>(true, false, false, arg_3.c.a), vec4<bool>(false, arg_3.e.a, false, global1.a), arg_2.a.x), select(vec4<bool>(true, false, arg_2.a.x, global1.a), vec4<bool>(global1.a, true, false, arg_3.c.b.a.x), vec4<bool>(arg_2.d, true, global0.x, false)), !vec4<bool>(true, arg_2.d, true, false)), select(!vec4<bool>(true, global1.a, true, true), vec4<bool>(arg_3.c.a, global1.a, true, false), select(vec4<bool>(false, global0.x, arg_2.a.x, global0.x), vec4<bool>(global0.x, arg_2.a.x, arg_3.a.a.x, global1.b.a.x), vec4<bool>(false, arg_2.d, arg_3.a.d, true))), global0.x & !global1.a), !vec4<bool>(arg_2.a.x, true, global1.a, global1.b.c < arg_3.c.b.c), -1i < ((u_input.b | u_input.b) << (~arg_0 % 32u)));
    var var_0 = select(select(arg_3.e.b.a, !vec3<bool>(true, !global0.x, arg_3.d.b.d), true), select(!global1.b.a, vec3<bool>(any(vec4<bool>(false, false, arg_3.e.b.a.x, arg_3.d.a)), !select(arg_2.a.x, arg_2.a.x, true), all(func_2().a)), select(arg_3.a.d, u_input.b < -2147483647i, any(vec4<bool>(global1.a, global1.a, arg_2.d, false)))), !vec3<bool>(any(vec4<bool>(global1.a, false, global1.a, global0.x)), true, true));
    var_0 = func_2().a;
    global4 = array<vec2<f32>, 13>();
    return Struct_3(_wgslsmith_mult_i32(1i, arg_2.c), vec3<u32>(countOneBits(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(arg_0, 4294967295u, 16419u)), select(vec3<u32>(4294967295u, arg_3.a.b, arg_0), u_input.d, arg_2.a))), ~32553u >> (select(arg_2.b, ~1u, true) % 32u), ~986u | ~min(arg_3.e.b.b, arg_3.e.b.b)));
}

fn func_1() -> vec3<u32> {
    var var_0 = global1.b.c;
    global2 = array<Struct_2, 5>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, global3.x));
    var var_2 = func_3(4294967295u, _wgslsmith_div_f32(517f, _wgslsmith_f_op_f32(-global3.x)), func_2(), Struct_4(global1.b, 14590i, global2[_wgslsmith_index_u32(4294967295u, 5u)], Struct_2(any(vec3<bool>(global0.x, false, true)), Struct_1(global1.b.a, 0u, firstTrailingBit(0i), true)), Struct_2(global1.b.d, Struct_1(func_2().a, u_input.e, 2147483647i, -172f > global3.x))));
    var var_3 = abs(var_2.b.x);
    return _wgslsmith_mod_vec3_u32(reverseBits(~u_input.d << (countOneBits(_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(var_2.b.x, global1.b.b, 98003u))) % vec3<u32>(32u))), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0i;
    global2 = array<Struct_2, 5>();
    var_0 = _wgslsmith_mult_i32(global1.b.c, ~u_input.b << (~_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.yx), u_input.c >> (u_input.c % vec2<u32>(32u))) % 32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, 917f)) - vec4<f32>(-510f, global3.x, global3.x, global3.x))))));
    var var_2 = Struct_3(59432i, func_1() >> (~vec3<u32>(u_input.c.x, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, 4294967295u), u_input.a.wwx)) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -167f);
    let var_4 = _wgslsmith_f_op_f32(1000f - 527f);
    let x = u_input.a;
    s_output = StorageBuffer(0u ^ var_2.b.x, ~((vec4<i32>(global1.b.c, global1.b.c, 0i, -31859i) << (firstTrailingBit(u_input.a) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_div_u32(var_2.b.x, 1u), _wgslsmith_mult_u32(1u, 72061u), select(global1.b.b, 3155u, true), select(8771u, 4294967295u, global1.a)) % vec4<u32>(32u))), ~abs(vec2<u32>(countOneBits(u_input.c.x), _wgslsmith_dot_vec3_u32(var_2.b, vec3<u32>(0u, 0u, var_2.b.x)))), _wgslsmith_f_op_f32(min(2312f, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

