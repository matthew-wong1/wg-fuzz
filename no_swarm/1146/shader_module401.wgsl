struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: vec2<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec2<bool>(true, false), Struct_1(true), Struct_1(false), vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true), Struct_1(false), Struct_1(false), vec2<bool>(false, false)), Struct_2(vec2<bool>(true, true), Struct_1(true), Struct_1(false), vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true), Struct_1(true), Struct_1(false), vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false), Struct_1(false), Struct_1(true), vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true), Struct_1(true), Struct_1(false), vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false), Struct_1(true), Struct_1(true), vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false), Struct_1(false), Struct_1(true), vec2<bool>(true, false)), Struct_2(vec2<bool>(false, true), Struct_1(true), Struct_1(false), vec2<bool>(true, false)), Struct_2(vec2<bool>(true, true), Struct_1(true), Struct_1(false), vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false), Struct_1(true), Struct_1(true), vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true), Struct_1(true), Struct_1(false), vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false), Struct_1(false), Struct_1(true), vec2<bool>(true, false)), Struct_2(vec2<bool>(true, true), Struct_1(true), Struct_1(true), vec2<bool>(false, true)), Struct_2(vec2<bool>(true, false), Struct_1(false), Struct_1(true), vec2<bool>(true, true)), Struct_2(vec2<bool>(true, true), Struct_1(false), Struct_1(true), vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false), Struct_1(true), Struct_1(false), vec2<bool>(true, true)), Struct_2(vec2<bool>(true, true), Struct_1(false), Struct_1(true), vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false), Struct_1(false), Struct_1(false), vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false), Struct_1(true), Struct_1(true), vec2<bool>(true, true)), Struct_2(vec2<bool>(true, false), Struct_1(false), Struct_1(false), vec2<bool>(true, true)), Struct_2(vec2<bool>(true, true), Struct_1(false), Struct_1(true), vec2<bool>(true, false)), Struct_2(vec2<bool>(true, true), Struct_1(true), Struct_1(true), vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false), Struct_1(true), Struct_1(false), vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false), Struct_1(true), Struct_1(false), vec2<bool>(true, true)), Struct_2(vec2<bool>(true, false), Struct_1(false), Struct_1(false), vec2<bool>(false, true)), Struct_2(vec2<bool>(true, false), Struct_1(false), Struct_1(true), vec2<bool>(true, true)));

var<private> global1: i32;

var<private> global2: Struct_3 = Struct_3(Struct_1(true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> i32 {
    global2 = Struct_3(global2.a);
    global1 = 2147483647i;
    global0 = array<Struct_2, 27>();
    let var_0 = Struct_1(all(vec2<bool>(all(vec3<bool>(global2.a.a, global2.a.a, global2.a.a)), all(select(vec2<bool>(global2.a.a, true), vec2<bool>(global2.a.a, false), false)))));
    var var_1 = ~(~countOneBits(vec2<i32>(27342i, ~1i)));
    return 17216i;
}

fn func_2(arg_0: vec4<i32>) -> vec2<u32> {
    let var_0 = -850f;
    global1 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(arg_0.x, u_input.a)), ~(arg_0.yx >> (vec2<u32>(63860u, 16987u) % vec2<u32>(32u)))) & func_3(), -1i);
    let var_1 = Struct_2(vec2<bool>(!(_wgslsmith_f_op_f32(-var_0) < _wgslsmith_f_op_f32(trunc(1167f))), !all(!vec4<bool>(global2.a.a, true, global2.a.a, true))), Struct_1(var_0 != var_0), Struct_1(true), select(vec2<bool>(false, true), vec2<bool>(true, any(select(vec2<bool>(true, global2.a.a), vec2<bool>(false, global2.a.a), true))), !global2.a.a));
    var var_2 = vec4<bool>(4409i <= arg_0.x, global2.a.a, false, true);
    global2 = Struct_3(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(59604u, 1u, 12770u), vec3<u32>(0u, 37383u, 8526u)) >= max(1u, ~23822u)));
    return min(vec2<u32>(_wgslsmith_clamp_u32(~4294967295u, 1u, 18688u), 1u), vec2<u32>(~9751u, _wgslsmith_clamp_u32(~68396u, 1u, max(4294967295u, 31289u))) >> (vec2<u32>(_wgslsmith_div_u32(4294967295u, countOneBits(57712u)), firstLeadingBit(~4294967295u)) % vec2<u32>(32u)));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 51847u, 20878u, 1u), abs(vec4<u32>(777u, 0u, 4294967295u, 56016u))), min(firstLeadingBit(1118u), _wgslsmith_div_u32(45345u, 4294967295u))), func_2(vec4<i32>(u_input.a, -2147483647i, ~59515i, _wgslsmith_div_i32(2147483647i, u_input.a)))), ~(~func_2(-vec4<i32>(u_input.a, -13809i, -2147483647i, -48078i))));
    var var_1 = any(!(!vec4<bool>(true, false, !global2.a.a, global2.a.a | global2.a.a)));
    global2 = Struct_3(global2.a);
    var var_2 = Struct_5(Struct_3(global2.a), Struct_4(global0[_wgslsmith_index_u32(var_0.x, 27u)], u_input.a, global2.a), select(!vec2<bool>(global2.a.a, global2.a.a), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, global2.a.a)), select(!vec2<bool>(global2.a.a, false), select(!vec2<bool>(global2.a.a, false), !vec2<bool>(global2.a.a, global2.a.a), !vec2<bool>(false, global2.a.a)), select(select(vec2<bool>(true, true), vec2<bool>(global2.a.a, global2.a.a), vec2<bool>(global2.a.a, false)), select(vec2<bool>(global2.a.a, global2.a.a), vec2<bool>(true, false), vec2<bool>(false, false)), !vec2<bool>(global2.a.a, global2.a.a)))), Struct_3(Struct_1(global2.a.a)));
    global0 = array<Struct_2, 27>();
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_1(), Struct_4(global0[_wgslsmith_index_u32(0u, 27u)], 59358i, global2.a), !vec2<bool>(global2.a.a, true), Struct_3(Struct_1(global2.a.a)));
    var var_1 = !all(!select(vec3<bool>(false, false, global2.a.a), select(vec3<bool>(false, false, false), vec3<bool>(global2.a.a, true, var_0.a.a.a), true), select(vec3<bool>(false, global2.a.a, false), vec3<bool>(true, var_0.a.a.a, global2.a.a), vec3<bool>(global2.a.a, var_0.c.x, false))));
    var var_2 = _wgslsmith_f_op_f32(ceil(-306f));
    global0 = array<Struct_2, 27>();
    let var_3 = _wgslsmith_mod_i32(-1i, -20952i);
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1328f, -356f), _wgslsmith_f_op_f32(round(-1664f)))), -1318f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(233f * 645f) - _wgslsmith_f_op_f32(sign(-1212f))))))));
    var var_5 = select(vec4<bool>(var_0.b.c.a, all(!vec3<bool>(true, true, global2.a.a)), (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 57247u, 53071u, 1u), vec4<u32>(21233u, 1u, 4294967295u, 4294967295u)) & 70062u) < ~(~0u), false), !vec4<bool>(var_0.d.a.a & (true && global2.a.a), global2.a.a, !all(var_0.c), global2.a.a), !global2.a.a);
    var var_6 = var_4.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1260f))));
}

