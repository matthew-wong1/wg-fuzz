struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 40059u;

var<private> global1: array<Struct_3, 17>;

var<private> global2: u32 = 10000u;

var<private> global3: Struct_5 = Struct_5(vec4<f32>(-1161f, -572f, -1000f, -287f));

var<private> global4: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(22125i, 1i, -45353i), vec3<i32>(-38213i, 1i, 25320i), vec3<i32>(9148i, 5615i, 1i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    global1 = array<Struct_3, 17>();
    let var_0 = !all(vec2<bool>(true, true));
    var var_1 = arg_1;
    global0 = ~(18014u << ((0u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(9803u, arg_1.c.x, 48216u), var_1.b)) % 32u));
    global0 = _wgslsmith_clamp_u32(arg_1.c.x, ~var_1.d, 4294967295u) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, 98127u), vec2<u32>(countOneBits(4294967295u), 1u)) % 32u);
    return -576f;
}

fn func_4(arg_0: f32, arg_1: Struct_5) -> vec2<f32> {
    global3 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a)));
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(~1u, abs(10306u), 4294967295u, _wgslsmith_div_u32(7096u, 20195u)), min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_add_u32(41548u, 20961u), _wgslsmith_dot_vec3_u32(vec3<u32>(79727u, 14323u, 0u), vec3<u32>(0u, 1u, 1u)), _wgslsmith_sub_u32(9282u, 1u), ~27728u))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, 4294967295u, 4294967295u, 37768u)), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(44484u, 0u, 28806u)), ~(~4294967295u), firstTrailingBit(14198u) & 0u), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1512f)) - _wgslsmith_f_op_f32(f32(-1f) * -1246f))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(30065u, 18135u, 10987u, 1u)), _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(1u, 9629u)), _wgslsmith_mod_u32(min(66067u, 0u), 1u)), vec4<u32>(abs(1u), select(1u, 0u, false), 47577u, ~58600u) & vec4<u32>(max(101614u, 4294967295u), ~41304u, 0u, ~23247u), 25361u), Struct_1(global3.a.x, ~firstTrailingBit(countOneBits(vec3<u32>(4294967295u, 33268u, 18400u))), ~(~vec4<u32>(120995u, 0u, 0u, 28452u)), ~select(_wgslsmith_mod_u32(1u, 111941u), _wgslsmith_clamp_u32(4294967295u, 0u, 1u), true)), Struct_1(-687f, vec3<u32>(1u, 1u, 1u), ~firstTrailingBit(vec4<u32>(0u, 17179u, 39862u, 11610u)) | _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 17201u, 49472u, 91256u), vec4<u32>(28534u, 74009u, 102234u, 4294967295u)), ~vec4<u32>(42637u, 20295u, 15251u, 1u)), _wgslsmith_sub_u32(~1u, ~26725u) << (abs(1u) % 32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1.b.a), var_1.c.c.yxz, vec4<u32>(var_1.c.c.x, 0u << (~_wgslsmith_sub_u32(var_1.a.c.x, var_1.a.c.x) % 32u), ~var_1.c.b.x, 0u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.c.d, 4579u, 18875u, var_1.a.b.x), ~var_1.a.c, ~vec4<u32>(4294967295u, var_1.a.c.x, var_1.b.b.x, var_1.c.b.x)), var_1.b.c) & var_1.c.d);
    let var_3 = min(u_input.a, ~global4[_wgslsmith_index_u32(~var_1.a.d, 3u)]);
    return arg_1.a.wy;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_vec3_u32(~vec3<u32>(14925u, 40033u, arg_1.x), vec3<u32>(abs(49966u) & (arg_1.x >> (arg_1.x % 32u)), 0u, 0u));
    var var_1 = 1u;
    let var_2 = Struct_1(global3.a.x, _wgslsmith_clamp_vec3_u32(vec3<u32>(min(countOneBits(89727u), var_0.x), var_0.x | arg_1.x, ~_wgslsmith_div_u32(11996u, 33029u)), select(reverseBits(vec3<u32>(arg_1.x, 17214u, var_0.x) ^ vec3<u32>(arg_1.x, 1u, arg_1.x)), ~(~vec3<u32>(var_0.x, 4716u, arg_1.x)), (u_input.a.x ^ u_input.a.x) <= u_input.a.x), vec3<u32>(1u, arg_1.x, _wgslsmith_mod_u32(var_0.x, 0u) | var_0.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.x, var_0.x, 1u), vec4<u32>(arg_1.x, var_0.x, 4294967295u, arg_1.x)) << (select(vec4<u32>(41323u, abs(4294967295u), 4294967295u, abs(1u)), vec4<u32>(var_0.x, arg_1.x, ~38772u, ~41549u), false) % vec4<u32>(32u)), 0u);
    let var_3 = var_2;
    let var_4 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(-global3.a.x), Struct_5(vec4<f32>(166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_div_f32(var_3.a, _wgslsmith_f_op_f32(func_3(u_input.a.xz, var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(-2147483647i, u_input.a.x), var_2)) * -377f)))));
    return var_2;
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_4(global3.a.yzw, func_2(!vec2<bool>(all(vec3<bool>(false, true, true)), all(vec3<bool>(false, true, true))), vec2<u32>(_wgslsmith_mult_u32(max(15932u, 0u), 1u), 1u)));
    var var_1 = select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), !(-u_input.a.x > -u_input.a.x), true), !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, true)));
    let var_2 = Struct_1(global3.a.x, vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.b.x, var_0.b.c.x, var_0.b.d), var_0.b.c.wwx), var_0.b.c.www), ~var_0.b.b.x, 0u) >> (max(max(_wgslsmith_div_vec3_u32(var_0.b.b, var_0.b.c.zyy), firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 1u))), var_0.b.c.yxx) % vec3<u32>(32u)), select(var_0.b.c, ~(~vec4<u32>(1u, var_0.b.c.x, 0u, 19313u) << (~vec4<u32>(4294967295u, 49741u, var_0.b.c.x, var_0.b.b.x) % vec4<u32>(32u))), select(vec4<bool>(false, all(var_1.yx), var_1.x, var_1.x), select(select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, false, false, true), var_1.x), vec4<bool>(true, true, var_1.x, var_1.x), !var_1.x), !(!vec4<bool>(false, var_1.x, false, var_1.x)))), 0u);
    let var_3 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, func_2(select(!var_1.zz, select(var_1.zy, vec2<bool>(var_1.x, var_1.x), var_1.zx), true), firstLeadingBit(vec2<u32>(var_0.b.d, 4007u) | vec2<u32>(var_0.b.b.x, var_0.b.c.x))).d), 3u)];
    var var_4 = firstLeadingBit(vec3<u32>(19057u, func_2(vec2<bool>(all(vec2<bool>(var_1.x, true)), var_1.x & true), ~func_2(var_1.xx, var_0.b.b.xy).b.yz).c.x, _wgslsmith_mod_u32(59852u, var_0.b.c.x)));
    return Struct_4(_wgslsmith_f_op_vec3_f32(min(var_0.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.a, var_2.a, var_2.a)))), var_0.a, select(var_3.x == 38900i, true, true))))), Struct_1(1341f, _wgslsmith_mod_vec3_u32(var_0.b.c.wwx, var_0.b.c.xyy), var_2.c, var_0.b.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a.wxz;
    var var_1 = firstLeadingBit(43421u);
    let var_2 = global3.a.x;
    global1 = array<Struct_3, 17>();
    var var_3 = firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_vec2_u32(~firstTrailingBit(vec2<u32>(1u, 45924u)), vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_add_u32(0u, 4294967295u), ~89431u))));
    var var_4 = func_1();
    var_4 = func_1();
    var var_5 = Struct_1(var_4.b.a, vec3<u32>(_wgslsmith_div_u32(4294967295u, var_4.b.d), ~1u, var_3.x), var_4.b.c, ~var_3.x);
    global1 = array<Struct_3, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1().b.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(var_4.a, vec3<f32>(111f, var_5.a, 241f), false)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.b.a, -2151f, global3.a.x), global3.a.www)), true)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, var_0.x, 923f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, var_5.a, var_0.x) + vec3<f32>(global3.a.x, -925f, 412f))) * var_4.a)), _wgslsmith_f_op_vec3_f32(var_4.a - vec3<f32>(377f, -242f, -455f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.a) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -849f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(min(-1100f, global3.a.x)))));
}

