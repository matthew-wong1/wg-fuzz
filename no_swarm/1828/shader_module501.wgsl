struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4>;

var<private> global1: array<vec3<u32>, 11>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(1u, 4294967295u, 50313u));

var<private> global3: Struct_4 = Struct_4(Struct_1(vec3<u32>(54250u, 1u, 11019u)), Struct_1(vec3<u32>(4294967295u, 0u, 1u)), vec4<i32>(-1i, 0i, -1i, 0i), Struct_3(3704i, vec2<u32>(19735u, 0u), 57230u, vec2<f32>(-692f, 1110f)));

var<private> global4: array<u32, 31>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: u32) -> i32 {
    let var_0 = ~vec2<u32>(global3.d.c, ~abs(31664u) >> (~arg_2 % 32u));
    global4 = array<u32, 31>();
    global0 = array<vec4<i32>, 4>();
    global2 = global3.b;
    var var_1 = Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_1.x, 33812i) & vec3<i32>(arg_0, -1i, 11027i), -global3.c.zxw) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(0u, 1u, 4294967295u, var_0.x)), ~_wgslsmith_mult_u32(global3.a.a.x, 5234u)) % 32u), _wgslsmith_mult_vec2_u32(global2.a.yz, vec2<u32>(u_input.a.x, _wgslsmith_add_u32(~102408u, _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(16261u, 31u)], var_0.x, arg_2)))), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(198f * global3.d.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.d.d.x))))));
    return -1i;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_5) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -181f);
    let var_1 = arg_1.a.xwx;
    var var_2 = u_input.a;
    global4 = array<u32, 31>();
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.d.d + vec2<f32>(-540f, -291f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.d.d)))))));
    return vec3<bool>(any(select(vec4<bool>(true, var_1.x, any(arg_1.a.wz), select(var_1.x, false, true)), arg_1.a, !(var_1.x == false))), true, !all(vec4<bool>(!var_1.x, false, 1u > u_input.a.x, !arg_1.a.x)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_4(firstTrailingBit(vec3<i32>(global3.d.a, -func_3(global3.d.a, global3.c.xx, 0u), global3.d.a)), Struct_5(vec4<bool>(true, true, true, true), _wgslsmith_dot_vec3_u32(~u_input.a.yxy, arg_0.a)));
    let var_1 = vec2<i32>(global3.d.a, global3.d.a);
    let var_2 = global3.d;
    var var_3 = ~countOneBits(~_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(global2.a.x, 4u)], -global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.a.x, 31u)], 4u)]));
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.d.x))), _wgslsmith_f_op_f32(global3.d.d.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.d.x - -557f)))), true));
    return arg_0;
}

fn func_1(arg_0: u32) -> vec4<bool> {
    global0 = array<vec4<i32>, 4>();
    let var_0 = Struct_2(func_2(global3.b), !vec3<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), true), func_4(_wgslsmith_div_vec3_i32(global3.c.yyz, global3.c.zww), Struct_5(vec4<bool>(all(vec4<bool>(false, false, true, true)), select(false, false, false), true, true), 36973u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.d.d.x, -675f, 1000f, -1000f) + vec4<f32>(-379f, global3.d.d.x, global3.d.d.x, global3.d.d.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d.d.x, 1088f, -243f, global3.d.d.x))) + vec4<f32>(global3.d.d.x, _wgslsmith_f_op_f32(-861f + global3.d.d.x), _wgslsmith_f_op_f32(380f + global3.d.d.x), -1979f))));
    let var_1 = vec3<i32>(global3.d.a, global3.c.x, global3.c.x);
    global4 = array<u32, 31>();
    var var_2 = Struct_5(vec4<bool>(abs(-13786i ^ global3.c.x) < var_1.x, true, true, false), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstLeadingBit(~u_input.a.x), ~(~1u)), 21803u, ~global4[_wgslsmith_index_u32(abs(1u), 31u)]));
    return !var_2.a;
}

fn func_5(arg_0: Struct_5, arg_1: f32, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = func_2(func_2(global3.a));
    global1 = array<vec3<u32>, 11>();
    global3 = Struct_4(Struct_1(arg_2.a ^ vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, arg_2.a.x, global3.d.b.x), u_input.b.x >> (1u % 32u), arg_0.b)), Struct_1(min(~(~vec3<u32>(1u, 4294967295u, global2.a.x)), abs(global1[_wgslsmith_index_u32(global2.a.x, 11u)]))), vec4<i32>(i32(-1i) * -1i, global3.c.x, global3.c.x, func_3(countOneBits(-34121i), ~firstLeadingBit(global3.c.yz), ~_wgslsmith_clamp_u32(0u, global4[_wgslsmith_index_u32(0u, 31u)], var_0.a.x))), Struct_3(global3.d.a, ~_wgslsmith_mod_vec2_u32(vec2<u32>(69353u, 4294967295u), max(global2.a.zx, global3.b.a.zy)), reverseBits(1u) << (arg_2.a.x % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.d.d.x, _wgslsmith_div_f32(295f, -795f)) - vec2<f32>(_wgslsmith_f_op_f32(sign(329f)), _wgslsmith_f_op_f32(arg_1 + global3.d.d.x)))));
    global0 = array<vec4<i32>, 4>();
    global1 = array<vec3<u32>, 11>();
    return _wgslsmith_div_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(8734u, 31u)], 31u)], 1u)), firstTrailingBit(vec4<u32>(0u, global2.a.x, 67622u, 0u))), vec4<u32>(~global3.b.a.x, ~arg_2.a.x, abs(4294967295u), firstLeadingBit(4294967295u)))), vec2<u32>(62655u, firstTrailingBit(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(~(~(1u >> (global4[_wgslsmith_index_u32(global3.a.a.x, 31u)] % 32u))), global3.a.a.x, firstTrailingBit(4294967295u));
    var var_1 = ~(select(~global3.b.a.yz, reverseBits(vec2<u32>(u_input.b.x, 63203u)), vec2<bool>(false, false)) << ((vec2<u32>(2257u, var_0.x) << (global2.a.yz % vec2<u32>(32u))) % vec2<u32>(32u))) << (_wgslsmith_mod_vec2_u32(func_5(Struct_5(func_1(4294967295u), global3.b.a.x), _wgslsmith_f_op_f32(-1f), global3.b), vec2<u32>(func_5(Struct_5(vec4<bool>(true, false, false, false), 42078u), -559f, global3.b).x, global2.a.x)) % vec2<u32>(32u));
    let var_2 = -447f;
    let var_3 = abs(_wgslsmith_dot_vec2_u32(countOneBits(u_input.a.wz), max(_wgslsmith_mod_vec2_u32(global3.d.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global3.d.c), var_0.xy, global3.b.a.xx)), global3.a.a.zx)));
    let var_4 = vec3<u32>(~(~(~0u)), 1u & _wgslsmith_mod_u32(0u, (global2.a.x << (4294967295u % 32u)) << (~global3.a.a.x % 32u)), _wgslsmith_clamp_u32(~var_0.x, 7893u, ~(~countOneBits(var_1.x))));
    let var_5 = vec3<u32>(_wgslsmith_dot_vec2_u32(var_4.zz, (global3.b.a.yz >> (countOneBits(global2.a.yy) % vec2<u32>(32u))) >> (~(~vec2<u32>(var_0.x, 9877u)) % vec2<u32>(32u))), 1u, 33310u);
    global0 = array<vec4<i32>, 4>();
    global1 = array<vec3<u32>, 11>();
    let var_6 = ~vec3<u32>(u_input.a.x, ~(_wgslsmith_mult_u32(1u, 21797u) ^ var_0.x), var_5.x);
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.a, -829f);
}

