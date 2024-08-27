struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(Struct_1(1i, 0u, false, vec3<u32>(4294967295u, 46406u, 11896u), true), vec4<bool>(true, false, false, true), vec4<u32>(84990u, 4294967295u, 0u, 4294967295u), vec3<bool>(false, false, false));

var<private> global2: array<bool, 1>;

var<private> global3: vec2<f32> = vec2<f32>(358f, 1273f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    let var_0 = Struct_2(Struct_1(global1.a.a, ~abs(firstLeadingBit(5702u)), true, ~(~(~vec3<u32>(arg_0.x, arg_0.x, 1u))), global2[_wgslsmith_index_u32(0u, 1u)]), select(vec4<bool>((global2[_wgslsmith_index_u32(arg_0.x, 1u)] && true) | global2[_wgslsmith_index_u32(global1.c.x, 1u)], all(global1.b.zwy), false, global1.d.x), vec4<bool>(false, all(vec2<bool>(false, global2[_wgslsmith_index_u32(44366u, 1u)])), select(all(global1.d.xz), false, !global1.d.x), any(select(global1.b.yx, global1.d.xz, global1.a.c))), vec4<bool>(global1.a.e, !any(vec2<bool>(global1.d.x, false)), global2[_wgslsmith_index_u32(4294967295u, 1u)], true)), global1.c, vec3<bool>(!global1.b.x, any(select(vec2<bool>(global2[_wgslsmith_index_u32(global1.c.x, 1u)], global2[_wgslsmith_index_u32(u_input.c, 1u)]), vec2<bool>(true, true), true)), true));
    global3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.x)) + 1f))))));
    global3 = vec2<f32>(1122f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-global3.x)) - global3.x));
    global0 = !all(vec4<bool>(any(select(vec3<bool>(false, false, var_0.d.x), vec3<bool>(true, global1.b.x, global2[_wgslsmith_index_u32(global1.a.d.x, 1u)]), global1.d)), !(!global2[_wgslsmith_index_u32(arg_0.x, 1u)]), !global2[_wgslsmith_index_u32(0u, 1u)] | var_0.b.x, var_0.d.x));
    global0 = false;
    return !(!(global3.x == -1918f));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(1i ^ global1.a.a, 0u, global3.x <= 565f, ~reverseBits(reverseBits(global1.c.zyz)), all(vec3<bool>(global1.a.e, false, global1.d.x))), !select(vec4<bool>(true, all(global1.b.wzw), true, -62515i < global1.a.a), global1.b, global1.d.x), global1.c, global1.b.zxw);
    let var_1 = var_0.d.x;
    var var_2 = vec4<bool>(global1.a.e, all(vec3<bool>(global2[_wgslsmith_index_u32(~u_input.c | select(u_input.c, 0u, global2[_wgslsmith_index_u32(1u, 1u)]), 1u)], !global2[_wgslsmith_index_u32(5794u, 1u)] | false, func_3(select(global1.c.yxy, var_0.c.www, true)))), true, true);
    global1 = Struct_2(Struct_1(var_0.a.a, _wgslsmith_add_u32(global1.a.b, global1.a.b), all(vec4<bool>(false & global1.b.x, var_2.x, true, var_0.b.x)), ~(~(~global1.a.d)), !(!var_0.b.x)), !vec4<bool>(false, 2147483647i == u_input.a, global1.b.x, true), ~vec4<u32>(global1.a.b >> (u_input.c % 32u), 24487u ^ global1.c.x, u_input.c, ~1u) ^ global1.c, select(vec3<bool>(!(9658i >= u_input.a), true, true), !vec3<bool>(false, true, any(vec3<bool>(false, var_2.x, var_2.x))), !(!(false & var_0.a.e))));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(136f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.x)) - global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + 396f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1449f), 203f, -188f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global3.x)))), _wgslsmith_f_op_f32(-1919f - -1040f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.x, -146f)) * _wgslsmith_f_op_f32(step(424f, 1201f))))), select(var_2.xyw, var_0.d, var_2.yxx)));
    return Struct_1(38265i, u_input.b, global1.a.e, firstTrailingBit(vec3<u32>(4294967295u, ~global1.c.x, _wgslsmith_dot_vec2_u32(global1.a.d.yz, vec2<u32>(1u, u_input.c)))) & ~global1.a.d, ~abs(~var_0.a.a) == 10119i);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = func_2();
    global0 = arg_1.b <= global1.c.x;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, global3.x), vec2<f32>(1000f, -946f)), vec2<f32>(global3.x, -725f), global2[_wgslsmith_index_u32(52792u ^ arg_1.d.x, 1u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-643f, 108f), vec2<f32>(-497f, -155f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1252f, global3.x) + vec2<f32>(global3.x, -644f)))))));
    var var_1 = abs(-2147483647i) < global1.a.a;
    global2 = array<bool, 1>();
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.x, _wgslsmith_f_op_f32(var_0.x - -418f)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(step(-1652f, 294f)), _wgslsmith_f_op_f32(ceil(var_0.x))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(786f, var_0.x), vec2<f32>(var_0.x, -740f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-300f, 764f), vec2<f32>(var_0.x, -1923f)))), vec2<f32>(_wgslsmith_f_op_f32(-565f + 1000f), 799f)))));
    return _wgslsmith_mod_vec3_u32(arg_0.d, vec3<u32>(func_1(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c, 0u, 4294967295u), ~global1.c.x), arg_3.a, (arg_3.a.d.x >> (65469u % 32u)) ^ min(48077u, arg_1.d.x)).d.x, 76726u, u_input.b));
}

fn func_5(arg_0: u32) -> StorageBuffer {
    let var_0 = Struct_2(global1.a, !global1.b, vec4<u32>(_wgslsmith_add_u32(global1.a.b, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 37170u), vec2<u32>(77678u, global1.a.d.x)), global1.a.d.xx)), 4905u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.a.b, arg_0), global1.a.d.zz), vec2<u32>(1u, _wgslsmith_dot_vec3_u32(global1.c.wyw, vec3<u32>(0u, global1.a.d.x, 78166u)))), u_input.b), !global1.b.wxz);
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1093f, global3.x, global3.x)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, global3.x, global3.x, -870f))))))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -107f);
    var var_3 = Struct_3(vec4<i32>(-(~u_input.d.x), select(0i, 1i, _wgslsmith_f_op_f32(trunc(var_1.x)) >= _wgslsmith_f_op_f32(global3.x * 1138f)), u_input.a, var_0.a.a), Struct_2(Struct_1(_wgslsmith_mod_i32(u_input.a, u_input.a), u_input.b, select(true, !global1.b.x, func_1(global1.a.b, Struct_1(u_input.a, 112664u, false, global1.a.d, var_0.d.x), global1.a.d.x).e), ~var_0.a.d, !(var_0.a.a < u_input.a)), select(select(global1.b, !global1.b, !vec4<bool>(global1.a.e, global1.d.x, true, var_0.d.x)), select(!vec4<bool>(var_0.d.x, false, global2[_wgslsmith_index_u32(98685u, 1u)], global1.a.c), global1.b, true), func_3(var_0.a.d)), vec4<u32>(max(global1.a.b, 4294967295u), ~(~global1.a.b), ~(~0u), ~(~4294967295u)), select(global1.d, !(!vec3<bool>(false, true, global1.a.e)), !any(vec2<bool>(global1.d.x, false)))));
    global0 = !global2[_wgslsmith_index_u32(arg_0, 1u)];
    return StorageBuffer(_wgslsmith_div_vec2_f32(var_1.xw, _wgslsmith_f_op_vec2_f32(-var_1.yw)), max(_wgslsmith_mult_i32(0i, 33408i) | var_0.a.a, abs(~_wgslsmith_clamp_i32(var_0.a.a, u_input.a, -734i))), ~(~(~firstLeadingBit(35710u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 1>();
    let var_0 = !(true == global2[_wgslsmith_index_u32(u_input.c, 1u)]);
    let var_1 = !select(global1.b, !global1.b, global1.c.x == ~u_input.c);
    global2 = array<bool, 1>();
    let var_2 = vec4<bool>(true, all(vec2<bool>(false, var_0)), var_1.x, !any(var_1.zwy) || !global2[_wgslsmith_index_u32(global1.a.d.x, 1u)]);
    let x = u_input.a;
    s_output = func_5(_wgslsmith_dot_vec3_u32(global1.a.d, ~func_4(global1.a, func_1(1u, global1.a, global1.a.d.x), global1.c.x, Struct_2(Struct_1(global1.a.a, 5597u, var_1.x, global1.a.d, var_0), global1.b, global1.c, var_2.xyw))));
}

