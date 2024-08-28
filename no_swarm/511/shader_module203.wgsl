struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(1i, 43556i, i32(-2147483648), 5020i, 2147483647i, 26484i, 11219i, 1i, 3351i, 0i, 11526i, -35802i, -9199i);

var<private> global1: Struct_2 = Struct_2(vec2<u32>(4294967295u, 97452u), vec2<bool>(true, false), -14312i, vec2<bool>(true, true));

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_5, 27>;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> bool {
    let var_0 = -_wgslsmith_dot_vec2_i32(~vec2<i32>(abs(global0[_wgslsmith_index_u32(global1.a.x, 13u)]), ~global1.c), -select(~vec2<i32>(u_input.a, 2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(global1.a.x, 13u)], -38081i) | vec2<i32>(-1i, global0[_wgslsmith_index_u32(global1.a.x, 13u)]), u_input.a >= global1.c));
    return any(!global1.b);
}

fn func_2(arg_0: f32, arg_1: i32) -> i32 {
    return -1i;
}

fn func_3() -> i32 {
    var var_0 = ~(-2147483647i);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a) - _wgslsmith_f_op_f32(max(-1488f, global4.c))), -1220f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2122f, -1327f))))))));
    var var_2 = abs(firstTrailingBit(vec4<i32>(-1i, u_input.a, u_input.a, global1.c)));
    var_0 = -(reverseBits(u_input.a) & _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(81628u, 13u)], global0[_wgslsmith_index_u32(~global1.a.x, 13u)] << (global1.a.x % 32u)));
    var var_3 = abs(vec3<i32>(-2147483647i & select(_wgslsmith_add_i32(global1.c, 9990i), 2147483647i, global4.b.x), _wgslsmith_mod_i32(-max(global0[_wgslsmith_index_u32(69135u, 13u)], global1.c), ~(-2147483647i)), -u_input.a));
    return firstLeadingBit(var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(select(vec3<bool>(func_1(), true, func_2(1000f, global1.c) > _wgslsmith_mult_i32(-5640i, 18717i)), !vec3<bool>(any(vec4<bool>(false, true, global2.x, false)), all(global2.zx), false), global4.d), vec3<bool>(func_1(), 1209f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a)), all(!vec2<bool>(global1.b.x, true))), 57047i < func_3());
    global1 = Struct_2(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(~1u, global1.a.x), _wgslsmith_div_vec2_u32(vec2<u32>(global1.a.x, global1.a.x), ~global1.a), _wgslsmith_sub_vec2_u32(global1.a, ~global1.a))), select(!(!global4.d.xy), select(global2.xx, vec2<bool>(any(vec2<bool>(global4.b.x, global1.b.x)), global2.x), global2.xy), false), _wgslsmith_clamp_i32(-1i << (global1.a.x % 32u), firstLeadingBit(2147483647i), i32(-1i) * -2147483647i), select(!vec2<bool>(global1.c >= u_input.a, !global4.b.x), vec2<bool>(func_1() & global1.d.x, any(global4.b)), !global1.d.x));
    let var_0 = Struct_3(Struct_1(global4.a, vec2<bool>(true, true), global4.c, global4.d), abs(global0[_wgslsmith_index_u32(global1.a.x, 13u)]), Struct_1(_wgslsmith_div_f32(global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c))), select(vec2<bool>(all(vec3<bool>(global2.x, false, global2.x)), select(global4.d.x, global1.d.x, global4.d.x)), vec2<bool>(global4.d.x, global1.b.x), vec2<bool>(func_1(), all(vec2<bool>(global4.d.x, true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-899f, 400f))), global4.c)), select(vec3<bool>(global2.x || global1.b.x, false, true), select(vec3<bool>(false, true, global1.b.x), vec3<bool>(true, global1.d.x, true), true), vec3<bool>(!global1.d.x, any(vec4<bool>(global2.x, false, true, true)), global1.b.x || false))), false, global2.xx);
    global3 = array<Struct_5, 27>();
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.c, global4.a, true))), -1000f))));
    global4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.c)))) - -2082f), select(global1.b, select(vec2<bool>(false, any(var_0.e)), global1.b, false), vec2<bool>(global4.d.x, true & (global2.x & false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(global4.c - 518f))))), global4.d);
    global3 = array<Struct_5, 27>();
    let var_2 = var_0.a.b.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.c, _wgslsmith_f_op_f32(exp2(var_0.a.a)), -701f) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c.a, 400f, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -532f, 939f) + vec3<f32>(global4.c, 1591f, var_0.c.a))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, var_3.x, var_0.a.a, 393f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(999f, var_0.c.c, var_3.x, var_0.c.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(927f, -1818f) + _wgslsmith_div_f32(557f, -286f))))));
}

