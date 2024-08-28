struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<u32>(52100u, 1u, 4294967295u), Struct_2(vec4<f32>(1000f, 216f, -433f, -1330f), 531f, 138f), vec2<i32>(1i, 5400i), Struct_2(vec4<f32>(-1062f, -988f, 485f, 150f), -415f, 842f));

var<private> global1: array<Struct_3, 6>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, global0.b.c, 376f, global0.b.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(192f, 1256f, 2679f, 294f) * vec4<f32>(1529f, global0.b.b, global0.b.b, arg_0.c)), vec4<bool>(false, false, false, false)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-124f, -1057f, arg_0.c, -602f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1147f, arg_0.c, global0.d.a.x, -1363f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.d.a + vec4<f32>(1000f, -1665f, arg_0.c, global0.b.b))))), 561f, 1185f);
    let var_1 = global0.a.yy;
    global1 = array<Struct_3, 6>();
    let var_2 = Struct_4(arg_0);
    var var_3 = Struct_4(Struct_1(2147483647i, u_input.a.zx, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(109f))))))));
    return _wgslsmith_mult_u32(_wgslsmith_sub_u32(firstLeadingBit(1737u), ~(~arg_0.b.x)), 13014u) ^ var_3.a.b.x;
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = global0.d.a.zy;
    var var_1 = select((firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<u32>(global0.a.x, u_input.a.x, u_input.c, 32949u))) ^ select(vec4<u32>(global0.a.x, 7479u, u_input.c, global0.a.x) | vec4<u32>(4294967295u, 0u, global0.a.x, u_input.c), vec4<u32>(u_input.a.x, global0.a.x, 4294967295u, 3221u), !arg_0)) ^ ~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(996u, 41841u, global0.a.x, u_input.a.x), vec4<u32>(2692u, 0u, 42731u, u_input.c)), countOneBits(vec4<u32>(4294967295u, 1u, global0.a.x, global0.a.x))), ~vec4<u32>(4294967295u >> (_wgslsmith_mult_u32(global0.a.x, u_input.a.x) % 32u), firstTrailingBit(min(6379u, u_input.a.x)), ~4294967295u, 52935u), arg_0);
    let var_2 = vec3<u32>(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(var_1.x, func_3(Struct_1(-1i, var_1.xx, global0.b.b))), min(49999u & global0.a.x, ~countOneBits(var_1.x))), 39540u, ~69534u);
    global0 = global1[_wgslsmith_index_u32(var_1.x, 6u)];
    var var_3 = max(abs(vec4<u32>(38773u, var_1.x, ~_wgslsmith_mult_u32(30001u, 0u), 2965u)), vec4<u32>(u_input.a.x, 12852u, ~var_2.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.xz), u_input.a.yx)) ^ vec4<u32>(global0.a.x, ~_wgslsmith_add_u32(4294967295u, global0.a.x), _wgslsmith_mod_u32(global0.a.x, ~0u), min(global0.a.x >> (9840u % 32u), 0u)));
    return global0.d;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_4 {
    var var_0 = vec2<u32>(~u_input.a.x, abs(arg_2.a.x));
    var_0 = min(u_input.a.zz, vec2<u32>(~(~_wgslsmith_mod_u32(var_0.x, arg_3.x)), ~(~_wgslsmith_sub_u32(global0.a.x, u_input.c))));
    let var_1 = func_2(!(!(_wgslsmith_f_op_f32(-global0.b.b) > 583f)));
    let var_2 = 50124u;
    let var_3 = arg_3;
    return Struct_4(Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(44347i, 37392i), global0.c ^ vec2<i32>(2147483647i, arg_1)), abs(arg_0)), arg_3.zw, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, -482f)), var_1.b))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = global0.b;
    let var_1 = arg_0.a;
    return select(!vec4<bool>(true, -1103f >= _wgslsmith_f_op_f32(trunc(686f)), false, false), select(!vec4<bool>(all(vec4<bool>(true, false, false, false)), true, true, true), vec4<bool>(false, all(vec3<bool>(true, true, true)), arg_0.a.b.x <= ~u_input.a.x, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), select(vec4<bool>(true, 10516u > arg_1.a.b.x, all(vec2<bool>(true, true)), true), vec4<bool>(true, true, true, true), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false)))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b.a.wwx;
    global1 = array<Struct_3, 6>();
    var var_1 = var_0.x;
    var_1 = -721f;
    let var_2 = u_input.b;
    var var_3 = vec4<bool>(true, !(!all(vec3<bool>(true, true, true))), !any(func_4(Struct_4(Struct_1(global0.c.x, global0.a.zz, -883f)), func_1(global0.c.x, 45590i, Struct_3(global0.a, Struct_2(vec4<f32>(-525f, var_0.x, global0.b.a.x, var_0.x), var_0.x, var_0.x), vec2<i32>(u_input.d, 1i), global0.d), vec4<u32>(global0.a.x, 4294967295u, u_input.a.x, global0.a.x)))), select(true, true, _wgslsmith_mult_i32(0i, u_input.d) <= _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, var_2, 2147483647i, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, var_2, var_2, var_2), vec4<i32>(-15375i, -15932i, 8702i, 18995i)))));
    global1 = array<Struct_3, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(~global0.a.x, ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.x, 1u, 61293u, global0.a.x), vec4<u32>(1u, 4294967295u, u_input.c, 1u)) & (~vec4<u32>(29668u, global0.a.x, 4294967295u, 15696u) << (min(vec4<u32>(global0.a.x, u_input.c, global0.a.x, 71974u), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)))), min(min(abs(vec3<i32>(global0.c.x, var_2, global0.c.x)), vec3<i32>(1i, 1i, 1i)), vec3<i32>(select(0i, 23990i, true), global0.c.x, -70324i) & _wgslsmith_add_vec3_i32(max(vec3<i32>(global0.c.x, -2147483647i, 1i), vec3<i32>(2147483647i, 6050i, 0i)), _wgslsmith_add_vec3_i32(vec3<i32>(var_2, u_input.b, 2147483647i), vec3<i32>(-52833i, 241i, var_2)))));
}

