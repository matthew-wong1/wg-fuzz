struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12>;

var<private> global1: array<Struct_2, 18>;

var<private> global2: array<Struct_1, 6>;

var<private> global3: Struct_1 = Struct_1(vec3<bool>(true, false, true), vec3<u32>(51329u, 37355u, 1u), vec4<bool>(false, true, true, false), true, 229f);

var<private> global4: array<Struct_2, 2>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> u32 {
    global3 = Struct_1(select(global3.c.ywy, select(vec3<bool>(true, !global3.a.x, all(global3.c)), !select(global3.a, vec3<bool>(global3.a.x, global3.a.x, global3.a.x), global3.d), true), global3.c.x), select(vec3<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 17689u, u_input.a), vec4<u32>(18716u, u_input.a, 14795u, global3.b.x), false), vec4<u32>(global3.b.x, u_input.a, global3.b.x, global3.b.x)), _wgslsmith_add_u32(~62997u, global3.b.x), 33753u), vec3<u32>(~_wgslsmith_add_u32(u_input.a, global3.b.x), _wgslsmith_dot_vec2_u32(reverseBits(global3.b.yz), global3.b.zz << (global3.b.xy % vec2<u32>(32u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global3.b.x, 0u, global3.b.x), vec4<u32>(u_input.a, u_input.a, global3.b.x, u_input.a))), !global3.a.x), !vec4<bool>(select(arg_0 == arg_1.x, global3.d, all(vec4<bool>(true, true, global3.d, true))), all(global3.c) || any(vec3<bool>(false, false, global3.d)), any(global3.a), false), !global3.c.x, _wgslsmith_div_f32(global3.e, _wgslsmith_f_op_f32(global3.e + global3.e)));
    let var_0 = 0u;
    var var_1 = -38356i;
    global0 = array<vec2<f32>, 12>();
    let var_2 = global3.e;
    return u_input.a;
}

fn func_2() -> Struct_2 {
    var var_0 = global4[_wgslsmith_index_u32(func_3(~(~u_input.d.x), u_input.d.xxw >> (vec3<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(global3.b.yx), vec2<u32>(u_input.a, u_input.a) | vec2<u32>(4294967295u, global3.b.x)), ~8357u, 4294967295u) % vec3<u32>(32u))), 2u)];
    var var_1 = var_0.c.c;
    global3 = Struct_1(vec3<bool>(false, all(select(vec2<bool>(var_0.c.d, false), select(var_0.c.c.xz, var_1.xw, false), true)), false), var_0.c.b, select(!select(select(global3.c, vec4<bool>(global3.c.x, false, true, var_0.c.a.x), vec4<bool>(true, global3.d, var_1.x, false)), global3.c, true), vec4<bool>(true, select(var_1.x && var_1.x, true, var_1.x), all(global3.a.zy) & (var_1.x | global3.a.x), true), !select(vec4<bool>(true, var_0.c.a.x, false, false), select(vec4<bool>(true, var_0.c.a.x, global3.d, true), var_0.c.c, var_0.c.c), all(var_1.wwz))), !(!(!(!global3.c.x))), _wgslsmith_f_op_f32(select(-693f, _wgslsmith_f_op_f32(-var_0.b), all(var_0.c.c))));
    var var_2 = var_1.x;
    let var_3 = !global3.c.yww;
    return Struct_2(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, var_0.a), 3588u), 310f, Struct_1(vec3<bool>(var_0.c.a.x, any(var_1.wyz), var_1.x), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(global3.b, var_0.c.b, vec3<u32>(global3.b.x, global3.b.x, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(31917u, global3.b.x, var_0.c.b.x), global3.b)) << ((select(vec3<u32>(u_input.a, global3.b.x, u_input.a), var_0.c.b, vec3<bool>(true, var_1.x, var_1.x)) << (~vec3<u32>(var_0.c.b.x, global3.b.x, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), var_0.c.c, var_0.c.a.x, _wgslsmith_f_op_f32(2129f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.e - -1275f), _wgslsmith_f_op_f32(f32(-1f) * -1574f)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>) -> u32 {
    global2 = array<Struct_1, 6>();
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(global3.b.xx << (~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a), global3.b.yy) % vec2<u32>(32u)), ~(~(~global3.b.zz))), ~9516u, 4294967295u);
    let var_1 = func_2();
    let var_2 = vec2<bool>(true, var_1.c.c.x);
    global2 = array<Struct_1, 6>();
    return u_input.a;
}

fn func_4(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = ~func_2().c.b.xx;
    let var_1 = ~firstTrailingBit(u_input.a);
    var_0 = firstTrailingBit(vec2<u32>(global3.b.x, ~(~1u)));
    global0 = array<vec2<f32>, 12>();
    let var_2 = 0u;
    return global2[_wgslsmith_index_u32(24620u, 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_div_i32(~(~1192i), u_input.b), u_input.c, -abs(u_input.b), 26081i) & (_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.d.x, ~u_input.b, 0i), ~(~vec4<i32>(u_input.c, u_input.d.x, u_input.b, u_input.b))) | u_input.d);
    var var_1 = func_4(~func_1(global3.c, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(370f, 983f, global3.e, global3.e)))) >> (func_2().c.b.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1079f))));
    let var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.a, 28804u, global3.b.x) & (vec3<u32>(43912u, 20042u, global3.b.x) ^ global3.b)), ~var_1.b >> (global3.b % vec3<u32>(32u))), ~_wgslsmith_div_vec3_u32(abs(_wgslsmith_mult_vec3_u32(global3.b, vec3<u32>(global3.b.x, 0u, 1u))), var_1.b));
    let var_3 = reverseBits(var_0.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(global3.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-381f)) + _wgslsmith_f_op_f32(step(var_1.e, _wgslsmith_f_op_f32(-734f + 1000f)))), _wgslsmith_f_op_f32(global3.e * _wgslsmith_f_op_f32(f32(-1f) * -174f))), vec3<f32>(global3.e, global3.e, global3.e), !any(vec2<bool>(var_2 < 9708u, var_1.d))));
    global2 = array<Struct_1, 6>();
    var_1 = global2[_wgslsmith_index_u32(u_input.a, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - -376f))), var_4.x) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_1.e, var_4.x), _wgslsmith_f_op_f32(-227f - 1740f)), var_4.zx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.e))))), vec3<f32>(-324f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.e + _wgslsmith_f_op_f32(max(1000f, 223f))))), _wgslsmith_div_f32(451f, 141f)), _wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec2_i32(u_input.d.yw | reverseBits(u_input.d.yz), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_3, var_3), u_input.d.xw), select(vec2<i32>(u_input.b, -15021i), vec2<i32>(0i, -2147483647i), vec2<bool>(global3.a.x, true))))), func_2().c.b.x);
}

