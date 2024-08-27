struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 31>;

var<private> global2: vec2<bool>;

var<private> global3: Struct_1 = Struct_1(vec4<f32>(145f, -1046f, 452f, 116f), vec3<u32>(9734u, 0u, 15092u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    var var_0 = global0.x;
    var var_1 = 33300u;
    var var_2 = arg_0;
    var_2 = Struct_1(vec4<f32>(arg_0.a.x, 897f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1289f))), _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(258f * _wgslsmith_f_op_f32(-global3.a.x)))), arg_0.b);
    let var_3 = Struct_1(arg_0.a, _wgslsmith_mod_vec3_u32(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b.x, var_2.b.x, var_2.b.x), vec3<u32>(arg_0.b.x, global3.b.x, 36966u), vec3<u32>(4294967295u, 31737u, 4294967295u)) ^ var_2.b), vec3<u32>(_wgslsmith_mult_u32(44130u, 19901u), global3.b.x, _wgslsmith_div_u32(0u, var_2.b.x) << (_wgslsmith_mult_u32(58900u, 63356u) % 32u))));
    return 1i;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec2<bool> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u & _wgslsmith_dot_vec4_u32(select(vec4<u32>(global3.b.x, global3.b.x, global3.b.x, global3.b.x), vec4<u32>(global3.b.x, 17616u, 1u, 0u), true) << (~vec4<u32>(global3.b.x, global3.b.x, 1u, global3.b.x) % vec4<u32>(32u)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(21760u, 6072u, 4294967295u, 62676u), vec4<u32>(global3.b.x, global3.b.x, global3.b.x, 20247u)), abs(vec4<u32>(global3.b.x, global3.b.x, global3.b.x, global3.b.x)), !vec4<bool>(global2.x, false, global0.x, false))), global3.b.x), 31u)];
    let var_1 = arg_3;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a - global3.a), vec3<u32>(_wgslsmith_dot_vec3_u32(~firstLeadingBit(global3.b), var_0.b), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~global3.b.x, global3.b.x ^ global3.b.x), min(_wgslsmith_mult_vec3_u32(vec3<u32>(12996u, var_0.b.x, var_0.b.x), var_0.b), vec3<u32>(59644u, global3.b.x, 0u))), (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 20022u, var_0.b.x, global3.b.x), vec4<u32>(global3.b.x, 1u, 6666u, global3.b.x)) ^ ~8868u) ^ select(1u, ~global3.b.x, var_1.x | var_1.x)));
    var var_3 = var_2;
    global2 = !vec2<bool>(true, _wgslsmith_div_u32(_wgslsmith_add_u32(68073u, var_2.b.x), var_0.b.x) > 1u);
    return select(arg_3, vec2<bool>(global2.x, var_0.b.x > 31543u), any(var_1));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~(1u << ((_wgslsmith_mult_u32(global3.b.x, select(0u, arg_0.b.x, false)) & 0u) % 32u)), 31u)];
    var var_1 = u_input.a.yxz;
    global0 = !select(select(vec2<bool>(global0.x | true, true || global2.x), select(select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, true), false), select(vec2<bool>(global0.x, false), vec2<bool>(false, global2.x), vec2<bool>(false, global2.x)), select(vec2<bool>(global2.x, false), vec2<bool>(global0.x, true), vec2<bool>(global2.x, false))), !global0.x), vec2<bool>(true & (true && global2.x), false), func_4(var_1.x | func_3(Struct_1(vec4<f32>(-1433f, global3.a.x, arg_0.a.x, global3.a.x), arg_0.b), u_input.a.zyz), true, vec2<i32>(var_1.x, var_1.x), vec2<bool>(global2.x & true, u_input.c.x <= 0i)));
    var var_2 = _wgslsmith_f_op_f32(floor(-804f));
    let var_3 = Struct_1(global3.a, reverseBits(select(reverseBits(vec3<u32>(global3.b.x, arg_0.b.x, 11178u)) & _wgslsmith_sub_vec3_u32(vec3<u32>(9263u, 19470u, 4618u), vec3<u32>(arg_0.b.x, arg_0.b.x, 1u)), vec3<u32>(19809u, var_0.b.x, _wgslsmith_dot_vec2_u32(global3.b.xy, arg_0.b.yz)), global2.x)));
    return var_3;
}

fn func_1() -> u32 {
    global2 = !select(vec2<bool>(!global2.x, global0.x), !vec2<bool>(global2.x & global2.x, u_input.a.x >= 14060i), !(!(!vec2<bool>(global0.x, global0.x))));
    global3 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1215f, _wgslsmith_f_op_f32(-247f - -1106f), global3.a.x, _wgslsmith_div_f32(global3.a.x, -2091f)) + _wgslsmith_f_op_vec4_f32(-global3.a)), ~(global3.b >> (global3.b % vec3<u32>(32u))) << (global3.b % vec3<u32>(32u))));
    let var_0 = 3013i;
    var var_1 = vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(-global3.a.x), global3.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x - -1501f)) - 1954f), 556f));
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global3.a.x)))), global3.a.x, global3.a.x, -611f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(821f))), _wgslsmith_f_op_f32(1375f - var_1.x), 409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(277f + global3.a.x))), all(!vec4<bool>(global2.x, false, global2.x, true)))), vec3<u32>(global3.b.x, _wgslsmith_mod_u32(22862u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.b.x, 0u, 4294967295u, global3.b.x), vec4<u32>(global3.b.x, 35176u, 46620u, 63336u)))), _wgslsmith_clamp_u32(~0u, _wgslsmith_mod_u32(global3.b.x, global3.b.x & 0u), 7648u)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(~(~global3.b.x), abs(79393u), global3.b.x);
    let var_1 = global1[_wgslsmith_index_u32(61753u, 31u)];
    var var_2 = var_0.x;
    let var_3 = global1[_wgslsmith_index_u32(func_1(), 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_dot_vec3_u32(global3.b, ~var_3.b), 87439u, ~(~4294967295u), ~var_0.x));
}

