struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 4>;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(73280u, vec4<i32>(0i, -1i, 25918i, 3787i), 4294967295u, 0u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> u32 {
    global0 = Struct_1(vec3<f32>(-117f, _wgslsmith_f_op_f32(f32(-1f) * -664f), 1875f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(f32(-1f) * -181f))))), global0.c, min(_wgslsmith_sub_vec4_u32(global1.d, vec4<u32>(40107u, global1.d.x << (1u % 32u), ~global0.d.x, ~global1.d.x)), _wgslsmith_mod_vec4_u32(select(global0.d, global0.d, !vec4<bool>(true, global3.x, global3.x, global3.x)), global1.d)));
    var var_0 = _wgslsmith_mult_vec2_u32(select(~(~(vec2<u32>(48738u, global1.d.x) & vec2<u32>(46972u, 10371u))), ~abs(vec2<u32>(0u, global0.d.x)), select(!(!vec2<bool>(false, global3.x)), vec2<bool>(any(vec2<bool>(global3.x, false)), any(vec3<bool>(global3.x, global3.x, global3.x))), !select(vec2<bool>(true, false), vec2<bool>(global3.x, global3.x), vec2<bool>(true, false)))), _wgslsmith_mult_vec2_u32(max(vec2<u32>(_wgslsmith_mod_u32(global0.d.x, global0.d.x), global0.d.x), _wgslsmith_clamp_vec2_u32(~vec2<u32>(34520u, 88154u), ~global1.d.xx, _wgslsmith_sub_vec2_u32(vec2<u32>(global0.d.x, 26905u), global0.d.yz))), ~abs(vec2<u32>(23408u, global1.d.x))));
    var var_1 = global1.a.x;
    global3 = !(!vec2<bool>(true, !global3.x));
    global3 = vec2<bool>(global3.x, false);
    return global1.d.x >> (4294967295u % 32u);
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = -1i;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b, 755f, 914f), global0.a, false)) * global1.a)))), global0.b, min(global1.c, -global0.c), global1.d);
    var var_2 = global0.d.x;
    global2 = array<Struct_3, 4>();
    let var_3 = -(~arg_0.b.x);
    return !any(select(select(select(vec2<bool>(true, global3.x), vec2<bool>(global3.x, global3.x), true), select(vec2<bool>(global3.x, true), vec2<bool>(true, true), false), global0.b >= -1383f), select(vec2<bool>(true, global3.x), vec2<bool>(true, false), false | global3.x), any(vec2<bool>(false, false))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_2 {
    global3 = select(arg_0.c, !vec2<bool>(!func_3(Struct_2(21615u, vec4<i32>(arg_0.b, arg_0.b, 8663i, 0i), arg_0.a.x, global1.d.x)), global3.x), true);
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -568f)) + 1000f), arg_1.a.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2321f, _wgslsmith_f_op_f32(min(global0.b, arg_1.a.x))) + _wgslsmith_f_op_vec2_f32(-arg_1.a.yy)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-619f, global0.b))))));
    global4 = array<Struct_2, 1>();
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(244f, var_0.x, -398f))), _wgslsmith_f_op_vec3_f32(arg_1.a + vec3<f32>(global1.a.x, -364f, -489f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(global0.a, global1.a)))), global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_1.a.x)))) + 644f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))), 0i, vec4<u32>(arg_0.a.x, min(max(arg_2.x, ~arg_0.a.x), _wgslsmith_add_u32(~arg_2.x, global0.d.x)), 48930u >> (0u % 32u), arg_1.d.x));
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(577f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_f_op_f32(global0.a.x * arg_1.b)))), global0.b, _wgslsmith_f_op_f32(-arg_1.a.x)), 1550f, -1i >> (~firstLeadingBit(~global0.d.x) % 32u), vec4<u32>(arg_2.x, arg_0.a.x, 54083u, ~select(~29079u, ~arg_1.d.x, true)));
    return Struct_2(abs(~1u), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, arg_1.c << (arg_1.d.x % 32u), i32(-1i) * -2147483647i, -1i), max(min(vec4<i32>(global0.c, arg_1.c, arg_0.b, 2147483647i), -vec4<i32>(2147483647i, -1i, -267i, arg_0.b)), max(vec4<i32>(0i, 2147483647i, 15311i, 0i), vec4<i32>(19592i, arg_0.b, -5692i, -5837i)) << (arg_0.a % vec4<u32>(32u))), -(~(~vec4<i32>(global1.c, global1.c, 0i, global1.c)))), arg_1.d.x, ~_wgslsmith_mult_u32(reverseBits(arg_1.d.x), arg_0.a.x));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2) -> vec3<f32> {
    global1 = Struct_1(vec3<f32>(global0.b, -138f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(184f + global0.b))), 1000f, -func_2(global2[_wgslsmith_index_u32(min(4294967295u, ~global0.d.x), 4u)], Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, 793f, global0.a.x) * global1.a), _wgslsmith_f_op_f32(f32(-1f) * -316f), global1.c, global0.d), vec4<u32>(4294967295u, arg_0, global0.d.x, 77210u)).b.x, _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global1.d.x, global1.d.x, arg_0) ^ vec4<u32>(62266u, arg_0, global0.d.x, 46500u), _wgslsmith_div_vec4_u32(global1.d, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0, 1u, global1.d.x), global0.d))), vec4<u32>(reverseBits(45072u), ~func_1(), arg_0, global1.d.x)));
    global1 = Struct_1(vec3<f32>(global0.a.x, 309f, _wgslsmith_f_op_f32(-1063f - global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(353f))), 616f)) + _wgslsmith_f_op_f32(806f + -636f)), 40914i, vec4<u32>(select(0u, _wgslsmith_mod_u32(global1.d.x, arg_0), func_3(Struct_2(global1.d.x, vec4<i32>(u_input.b, global1.c, -29194i, arg_2.b.x), global1.d.x, 13521u))) ^ 1u, abs(arg_0), 1u, arg_0 << (1u % 32u)));
    global2 = array<Struct_3, 4>();
    let var_0 = Struct_3(global1.d, _wgslsmith_mult_i32(select(-global1.c | countOneBits(u_input.a.x), 0i, func_3(func_2(Struct_3(vec4<u32>(arg_2.d, 12671u, 48855u, global1.d.x), -1i, vec2<bool>(arg_1.x, global3.x)), Struct_1(vec3<f32>(global0.b, global1.a.x, global0.a.x), global0.a.x, 0i, vec4<u32>(107938u, global1.d.x, 15137u, 13048u)), vec4<u32>(80114u, arg_0, 0u, 1u)))), -35746i), !(!(!(!vec2<bool>(global3.x, true)))));
    var var_1 = func_2(Struct_3(vec4<u32>(_wgslsmith_div_u32(~arg_0, _wgslsmith_sub_u32(147186u, arg_2.c)), 1u, arg_0 << (abs(28649u) % 32u), _wgslsmith_add_u32(~arg_2.c, 4294967295u)), global1.c, select(var_0.c, select(select(var_0.c, var_0.c, true), select(arg_1.zy, arg_1.yx, vec2<bool>(false, global3.x)), arg_1.x), global3.x)), Struct_1(vec3<f32>(global1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a.x))), global1.a.x), 337f, firstTrailingBit(2147483647i), ~(~vec4<u32>(13289u, 0u, global0.d.x, 1u))), countOneBits(~firstLeadingBit(firstLeadingBit(vec4<u32>(4294967295u, 18438u, arg_2.a, var_0.a.x))))).b.x;
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 4>();
    var var_0 = _wgslsmith_f_op_vec2_f32(global1.a.zz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global1.a.xy))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_mult_u32(func_1(), countOneBits(~global0.d.x)), !vec3<bool>(true, !global3.x, global3.x), func_2(global2[_wgslsmith_index_u32(global0.d.x, 4u)], Struct_1(vec3<f32>(1055f, global0.b, global1.b), _wgslsmith_f_op_f32(1113f * 1160f), global1.c, global0.d), vec4<u32>(_wgslsmith_sub_u32(31787u, global1.d.x), global1.d.x, _wgslsmith_div_u32(1u, global1.d.x), _wgslsmith_sub_u32(0u, global1.d.x))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1355f - 1472f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1620f) + _wgslsmith_f_op_f32(global1.a.x * var_0.x)), -1146f), _wgslsmith_f_op_vec3_f32(global0.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(-525f);
}

