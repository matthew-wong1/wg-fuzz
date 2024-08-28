struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: f32 = -148f;

var<private> global2: Struct_1 = Struct_1(-496f, vec2<u32>(4294967295u, 1u));

var<private> global3: Struct_2 = Struct_2(false, 1u, Struct_1(147f, vec2<u32>(36789u, 1u)), -39769i);

var<private> global4: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(693f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1169f)))), _wgslsmith_f_op_f32(-719f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a, 805f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.c.a))), global2.b);
    global0 = array<Struct_2, 8>();
    global3 = Struct_2(false, ~36230u, Struct_1(530f, var_1.b), -37569i | _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -u_input.e.xww, ~u_input.e.wzx));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(step(-1079f, -340f))))), global2.b);
    return -303f;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> f32 {
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(~global2.b.x))));
    var var_0 = Struct_1(global2.a, ~global2.b);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), ~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global3.b, 54970u), arg_0), var_0.b));
    var var_1 = abs(vec3<u32>(~0u, ~arg_0.x, countOneBits(var_0.b.x)));
    global4 = 1u;
    return global3.c.a;
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    global0 = array<Struct_2, 8>();
    var var_0 = arg_0.x;
    global1 = _wgslsmith_f_op_f32(func_2(_wgslsmith_sub_vec2_u32(u_input.d.ww, abs(global3.c.b)), ~3721u));
    let var_1 = _wgslsmith_sub_vec2_u32(~(max(firstLeadingBit(global2.b), vec2<u32>(u_input.d.x, global3.c.b.x)) | ~(~global3.c.b)), reverseBits(vec2<u32>(~u_input.a.x, _wgslsmith_add_u32(4294967295u, u_input.a.x)) << (select(~global3.c.b, _wgslsmith_add_vec2_u32(vec2<u32>(20415u, 4294967295u), vec2<u32>(global3.c.b.x, 1u)), select(vec2<bool>(global3.a, true), vec2<bool>(false, false), vec2<bool>(false, global3.a))) % vec2<u32>(32u))));
    global2 = global3.c;
    return Struct_2(global3.a, ~(~1u), global3.c, global3.d);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 8>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.c.a - 2094f))));
    let var_1 = Struct_2(_wgslsmith_dot_vec2_i32(-vec2<i32>(4936i, -33082i) << (select(global2.b, global3.c.b, false) % vec2<u32>(32u)), u_input.e.zy) >= -2147483647i, arg_0.c.b.x, Struct_1(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(arg_0.c.a - _wgslsmith_f_op_f32(-arg_0.c.a))), ~(~countOneBits(arg_0.c.b))), global3.d);
    global4 = 33587u;
    var var_2 = -countOneBits(-2147483647i);
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(vec4<i32>(0i, _wgslsmith_mod_i32(global3.d << (u_input.a.x % 32u), _wgslsmith_div_i32(u_input.e.x, 38914i)), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.e.x, 46189i), 2147483647i), -7542i)));
    let var_1 = vec2<i32>(~(-func_1(vec4<i32>(u_input.b, global3.d, -1i, 0i) ^ vec4<i32>(1i, -56666i, 2147483647i, u_input.b)).d), global3.d);
    global3 = func_1(firstLeadingBit(max(vec4<i32>(-global3.d, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, u_input.c, u_input.e.x), vec3<i32>(u_input.c, 1i, global3.d)), _wgslsmith_add_i32(-62920i, -1i), 1i), min(select(u_input.e, vec4<i32>(var_1.x, -2147483647i, -27971i, global3.d), vec4<bool>(global3.a, global3.a, false, global3.a)), reverseBits(u_input.e)))));
    let var_2 = u_input.e.xzy;
    var var_3 = select(vec2<u32>(1u, 10916u), ~((abs(vec2<u32>(global3.c.b.x, 4294967295u)) >> (abs(vec2<u32>(global3.b, 87998u)) % vec2<u32>(32u))) ^ ~(~vec2<u32>(277u, var_0.b.x))), !(!select(select(vec2<bool>(global3.a, false), vec2<bool>(false, false), global3.a), vec2<bool>(false, true), select(vec2<bool>(global3.a, global3.a), vec2<bool>(global3.a, false), global3.a))));
    global4 = (~6392u >> (max(0u, 1u) % 32u)) & max(_wgslsmith_dot_vec2_u32(u_input.a, ~u_input.d.yz) & var_3.x, _wgslsmith_mult_u32(0u, 51001u));
    var var_4 = u_input.a.x;
    let var_5 = global0[_wgslsmith_index_u32(4294967295u, 8u)];
    let var_6 = _wgslsmith_add_i32(-var_5.d, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(firstLeadingBit(var_3.x), var_0.b.x), min(var_0.b, ~(~(~global3.c.b))), abs(~_wgslsmith_add_vec3_u32(u_input.d.yzz ^ u_input.d.zyw, u_input.d.wwx)));
}

