struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: Struct_2,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: u32 = 59271u;

var<private> global2: array<Struct_3, 14>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<bool> {
    var var_0 = Struct_5(Struct_3(arg_1, Struct_1(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(sign(arg_1.a))), vec2<i32>(arg_1.b.x, _wgslsmith_mult_i32(8691i, u_input.a)), select(vec2<bool>(global0.x, arg_1.c.x), !global0.xy, select(arg_1.c, vec2<bool>(false, global0.x), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a)))))), !(arg_0.b.c.x && arg_1.c.x), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-arg_0.b.a)) * 507f), vec4<u32>(~_wgslsmith_sub_u32(4294967295u, 65881u), ~(~1u), 1u, ~1u), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2))))), Struct_4(arg_0), ~_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(16238u, 4294967295u, 1u, 42983u)), vec4<u32>(35860u, 0u, countOneBits(0u), 21182u)));
    var var_1 = Struct_3(Struct_1(1037f, -select(vec2<i32>(-2147483647i, arg_1.b.x), vec2<i32>(arg_1.b.x, 0i), true) & ~(~var_0.d.a.b.b), select(!select(vec2<bool>(global0.x, global0.x), arg_1.c, arg_1.c), select(arg_0.a.c, select(vec2<bool>(arg_0.a.c.x, true), global0.zz, var_0.d.a.b.c), true), true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_0.a.c) * -1785f) - -1002f), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2368i, 0i), vec2<i32>(50661i, arg_0.a.b.x)), ~vec2<i32>(1i, 1i)) | (vec2<i32>(u_input.a, -16910i) ^ vec2<i32>(-5281i, 52944i)), select(arg_1.c, select(var_0.a.a.c, !arg_1.c, arg_1.c.x), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1690f)) - -610f))))));
    global2 = array<Struct_3, 14>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a) + var_0.c.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(~_wgslsmith_mult_i32(var_0.a.b.b.x, -1i), _wgslsmith_add_i32(~var_1.a.b.x, -1i)), firstTrailingBit(var_0.d.a.a.b << ((vec2<u32>(11348u, 23855u) | var_0.c.b.xw) % vec2<u32>(32u)))), var_1.b.c);
    let var_3 = select(!(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, var_2.c.x), vec4<bool>(var_1.b.c.x, true, arg_1.c.x, var_2.c.x)))), vec4<bool>(true, var_1.a.c.x, true, false), vec4<bool>(!all(!vec4<bool>(global0.x, arg_1.c.x, false, global0.x)), any(!vec2<bool>(arg_1.c.x, false)), select(false, any(!global0.wzw), (var_0.a.b.c.x || true) || (arg_0.a.c.x || var_1.a.c.x)), !(select(16091u, 0u, false) == ~var_0.e)));
    return !arg_0.a.c;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = ~(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(29750u, 1u, 70000u, 1u), vec4<u32>(arg_2, 23949u, 83354u, arg_2), vec4<u32>(1u, 0u, 24136u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_2, 174699u, 4294967295u), vec4<u32>(1u, arg_2, 8580u, 1u))), _wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_2, arg_2, 5523u), vec3<u32>(34114u, 0u, 4294967295u)), ~vec3<u32>(41897u, 4294967295u, 65053u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 28172u, arg_2, arg_2) | vec4<u32>(49774u, 40214u, 15184u, 83451u), vec4<u32>(157533u, arg_2, 21709u, arg_2))));
    var var_1 = select(func_3(arg_1, arg_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3.a, -1212f, arg_3.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, arg_0.c, -321f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-159f, -300f, 345f)) + vec3<f32>(638f, 1584f, 895f)))), vec2<bool>(true, true), !all(global0.zzy));
    let var_2 = vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a, arg_0.a.b.x) >> (22182u % 32u), select(-2147483647i, u_input.a ^ 5940i, !var_1.x))), ~(~(~(arg_1.a.b.x >> (1u % 32u)))), 39228i, _wgslsmith_dot_vec2_i32(arg_1.b.b, -(arg_1.a.b ^ firstTrailingBit(vec2<i32>(arg_3.b.x, 2147483647i)))));
    let var_3 = firstTrailingBit(vec3<u32>(abs(arg_2), _wgslsmith_div_u32(countOneBits(var_0), ~_wgslsmith_mod_u32(1u, 4294967295u)), ~_wgslsmith_div_u32(4294967295u, 9002u) & ~select(4294967295u, 4294967295u, global0.x)));
    let var_4 = arg_0.b.c.x;
    return Struct_3(Struct_1(arg_1.a.a, arg_3.b, vec2<bool>(func_3(Struct_3(Struct_1(arg_3.a, vec2<i32>(8395i, -1i), vec2<bool>(var_1.x, true)), arg_0.b, arg_1.b.a), Struct_1(113f, var_2.xy, arg_1.a.c), vec3<f32>(arg_3.a, arg_0.c, arg_1.c)).x, (0u << (1u % 32u)) == ~arg_2)), Struct_1(-1240f, _wgslsmith_sub_vec2_i32(select(-var_2.xw, firstLeadingBit(arg_3.b), arg_1.b.c), -(~vec2<i32>(var_2.x, u_input.a))), arg_0.a.c), 905f);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_5) -> bool {
    var var_0 = func_2(arg_1.d.a, func_2(Struct_3(arg_1.d.a.b, arg_1.a.b, arg_1.d.a.b.a), Struct_3(func_2(global2[_wgslsmith_index_u32(~44467u, 14u)], func_2(global2[_wgslsmith_index_u32(24744u, 14u)], arg_1.a, arg_1.c.b.x, arg_1.a.a), arg_1.c.b.x, arg_1.d.a.b).b, func_2(global2[_wgslsmith_index_u32(~arg_1.c.b.x, 14u)], func_2(arg_1.d.a, Struct_3(Struct_1(1763f, vec2<i32>(arg_1.d.a.b.b.x, -1i), vec2<bool>(false, arg_1.d.a.a.c.x)), arg_1.a.b, -654f), arg_1.e, Struct_1(arg_1.a.a.a, arg_0.xy, vec2<bool>(global0.x, arg_1.b))), ~101631u, arg_1.a.a).b, _wgslsmith_f_op_f32(abs(-315f))), arg_1.e, func_2(global2[_wgslsmith_index_u32(~arg_1.e, 14u)], func_2(func_2(Struct_3(arg_1.a.a, Struct_1(arg_1.c.c.x, arg_1.a.b.b, arg_1.d.a.a.c), arg_1.d.a.a.a), global2[_wgslsmith_index_u32(arg_1.e, 14u)], 95661u, Struct_1(arg_1.d.a.c, vec2<i32>(2147483647i, -1i), vec2<bool>(false, false))), Struct_3(arg_1.d.a.b, Struct_1(-575f, arg_1.d.a.a.b, vec2<bool>(global0.x, global0.x)), 345f), 103575u, arg_1.a.b), 0u, arg_1.a.a).a), 12733u, func_2(Struct_3(arg_1.d.a.a, Struct_1(_wgslsmith_f_op_f32(arg_1.a.b.a * -2581f), select(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-13008i, arg_1.a.a.b.x), vec2<bool>(false, global0.x)), vec2<bool>(false, false)), _wgslsmith_div_f32(_wgslsmith_div_f32(629f, arg_1.c.a), 882f)), Struct_3(Struct_1(arg_1.c.a, -arg_0.zx, !global0.wz), arg_1.d.a.b, _wgslsmith_f_op_f32(max(arg_1.a.c, _wgslsmith_f_op_f32(step(-1589f, arg_1.d.a.a.a))))), ~0u, Struct_1(_wgslsmith_f_op_f32(sign(arg_1.a.c)), vec2<i32>(firstTrailingBit(-1i), _wgslsmith_div_i32(u_input.a, -4332i)), vec2<bool>(global0.x | false, true))).b).b;
    let var_1 = var_0.b;
    global1 = select(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(arg_1.c.b, arg_1.c.b) << (vec4<u32>(arg_1.e, arg_1.e, 37344u, arg_1.c.b.x) % vec4<u32>(32u)), vec4<u32>(~0u, arg_1.e, abs(10645u), 38259u)), max(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c.b.x, arg_1.e, arg_1.c.b.x, arg_1.c.b.x), vec4<u32>(arg_1.c.b.x, 20402u, 71622u, 12290u)), ~vec4<u32>(1u, arg_1.c.b.x, 60080u, 20279u)) >> (select(vec4<u32>(arg_1.c.b.x, arg_1.e, 41681u, arg_1.e), vec4<u32>(1841u, arg_1.e, 145247u, arg_1.c.b.x), global0.x) % vec4<u32>(32u))), _wgslsmith_mult_u32(0u, 22488u), false);
    var var_2 = vec4<i32>(_wgslsmith_mult_i32(abs(var_0.b.x) & ~var_1.x, ~arg_0.x), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, u_input.a, arg_0.x), vec3<i32>(arg_0.x, 48617i, 0i)), ~arg_0.x) >> (_wgslsmith_mult_u32(20193u | arg_1.e, arg_1.e) % 32u), _wgslsmith_dot_vec3_i32(select(~vec3<i32>(var_1.x, u_input.a, u_input.a), ~arg_0, arg_1.c.b.x >= arg_1.e), firstLeadingBit(~arg_0)), -1i) >> (vec4<u32>(16681u, ~arg_1.e, select(arg_1.c.b.x, countOneBits(~63707u), false), ~0u) % vec4<u32>(32u));
    var var_3 = arg_1.d;
    return all(vec3<bool>(~select(20438i, -22287i, var_0.c.x) != (countOneBits(u_input.a) >> (14307u % 32u)), reverseBits(arg_1.e) >= _wgslsmith_mult_u32(firstLeadingBit(1u), arg_1.c.b.x), any(vec4<bool>(arg_1.b, func_3(var_3.a, Struct_1(var_0.a, var_3.a.b.b, vec2<bool>(false, global0.x)), arg_1.c.c).x, arg_1.a.a.c.x, false))));
}

fn func_1() -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(156f - _wgslsmith_f_op_f32(f32(-1f) * -554f))), countOneBits(~abs(firstLeadingBit(vec2<i32>(u_input.a, 0i)))), vec2<bool>(func_4(-(~vec3<i32>(u_input.a, u_input.a, u_input.a)), Struct_5(func_2(global2[_wgslsmith_index_u32(4415u, 14u)], global2[_wgslsmith_index_u32(27655u, 14u)], 0u, Struct_1(-960f, vec2<i32>(u_input.a, 1i), global0.zy)), true, Struct_2(-825f, vec4<u32>(4294967295u, 12969u, 69813u, 45355u), vec3<f32>(-470f, -1012f, -825f)), Struct_4(Struct_3(Struct_1(-342f, vec2<i32>(u_input.a, 2147483647i), global0.yw), Struct_1(902f, vec2<i32>(-2147483647i, u_input.a), vec2<bool>(true, global0.x)), -1106f)), reverseBits(0u))), true));
    global2 = array<Struct_3, 14>();
    global0 = select(vec4<bool>(-225f == _wgslsmith_f_op_f32(step(func_2(global2[_wgslsmith_index_u32(15355u, 14u)], Struct_3(Struct_1(-1455f, var_0.b, vec2<bool>(var_0.c.x, true)), Struct_1(-2523f, vec2<i32>(var_0.b.x, -48044i), vec2<bool>(global0.x, var_0.c.x)), 1858f), 1u, Struct_1(var_0.a, vec2<i32>(-2147483647i, u_input.a), vec2<bool>(var_0.c.x, global0.x))).c, _wgslsmith_div_f32(var_0.a, var_0.a))), true, var_0.c.x, true), vec4<bool>(false, all(vec3<bool>(!var_0.c.x, all(vec4<bool>(true, var_0.c.x, var_0.c.x, global0.x)), false)), all(select(!vec4<bool>(global0.x, var_0.c.x, true, false), !vec4<bool>(global0.x, false, true, true), true)), var_0.c.x), !(true | any(vec3<bool>(var_0.c.x, global0.x, true))) || !(!all(vec4<bool>(var_0.c.x, true, var_0.c.x, false))));
    var var_1 = true;
    global2 = array<Struct_3, 14>();
    return vec3<f32>(_wgslsmith_f_op_f32(-353f + _wgslsmith_div_f32(-1058f, _wgslsmith_f_op_f32(f32(-1f) * -560f))), -200f, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-881f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-857f, 981f, false)), 687f)) + _wgslsmith_f_op_f32(-1118f + _wgslsmith_f_op_f32(-322f * -370f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -115f) * 2664f) - _wgslsmith_f_op_f32(f32(-1f) * -1568f))));
    var var_1 = global0.x;
    global2 = array<Struct_3, 14>();
    var_1 = false;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(18936u, 0u, 1u, 76558u)), ~vec4<u32>(1u, 30733u, 4294967295u, 5676u)) | select(vec4<u32>(46752u, 4294967295u, 19805u, 7418u), vec4<u32>(35769u, 37963u, 4294967295u, 0u), !global0.x), select(vec4<u32>(1u, 1u, 4294967295u, ~1u), ~(~vec4<u32>(0u, 4294967295u, 1u, 394u)), global0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-1259f, var_0.x, -1375f), vec3<f32>(681f, -1000f, 1198f)), vec3<f32>(_wgslsmith_f_op_f32(min(var_0.x, -1000f)), var_0.x, 152f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1088f) + vec3<f32>(var_0.x, -783f, var_0.x))))));
    let var_3 = reverseBits(1i);
    let var_4 = ~countOneBits(~countOneBits(~var_2.b.x));
    let var_5 = reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(51210u ^ var_2.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, var_2.b.x, 23364u), var_2.b), ~var_4), _wgslsmith_add_vec3_u32(var_2.b.wyy, var_2.b.zyz | vec3<u32>(var_2.b.x, 13736u, var_4)))) & select(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_2.b.xzy, vec3<u32>(var_2.b.x, var_4, 4294967295u)), var_4), ~(~var_4), !global0.x);
    var var_6 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(406f, 1187f) + var_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), 37584i, max(var_3, 27042i));
}

