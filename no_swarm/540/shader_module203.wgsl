struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(global0.x)), global0.x);
    var var_1 = 280f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(floor(293f))))));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -551f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1022f, -621f, var_0.x, var_0.x), vec4<f32>(global0.x, global0.x, global0.x, var_0.x)))), vec4<f32>(1304f, global0.x, -105f, 1f), arg_0.b.b)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(var_0.x - -1228f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * -268f), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-1000f * 1989f), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 377f, var_0.x, -1670f)))))));
    var var_2 = arg_0.b.d.a;
    return ~84673u;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<i32>) -> f32 {
    let var_0 = !select(!vec4<bool>(any(vec2<bool>(arg_1.b, true)), arg_0.b.b != arg_0.b.b, true, !arg_1.b), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, false))), arg_1.b);
    var var_1 = _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -515f));
    let var_2 = arg_1;
    var var_3 = ~(vec2<i32>(countOneBits(arg_2.x) >> ((arg_0.b.c.x >> (21547u % 32u)) % 32u), var_2.d.a) ^ vec2<i32>(-1i, arg_0.b.a.a));
    var_3 = abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, ~(-arg_0.b.d.a)), arg_2.xx, vec2<i32>(arg_1.d.a, var_3.x)));
    return _wgslsmith_f_op_f32(trunc(-878f));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_3(4294967295u, arg_1), Struct_2(Struct_1(_wgslsmith_add_i32(1i, _wgslsmith_add_i32(1131i, u_input.a.x))), !(!(1980f > global0.x)), _wgslsmith_mult_vec3_u32(reverseBits(u_input.b.yxx), vec3<u32>(1u, func_3(Struct_3(9066u, arg_1)), arg_0)), Struct_1(_wgslsmith_sub_i32(~u_input.a.x, -52719i))), select(~vec3<i32>(~(-5606i), ~arg_1.d.a, arg_1.a.a), _wgslsmith_div_vec3_i32(select(~vec3<i32>(u_input.a.x, arg_1.a.a, arg_1.a.a), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.d.a, u_input.a.x, arg_1.a.a), vec3<i32>(arg_1.d.a, 2147483647i, 29748i)), vec3<bool>(true, true, arg_1.b)), vec3<i32>(2147483647i, firstTrailingBit(10496i), countOneBits(-15273i))), vec3<bool>(true, arg_1.b, select(true, arg_1.b | arg_1.b, all(vec4<bool>(false, arg_1.b, true, false)))))));
    global0 = vec4<f32>(-682f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x), global0.x, -452f);
    global0 = vec4<f32>(var_0, _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0)))), global0.x, var_0);
    var var_1 = ~_wgslsmith_div_i32(10799i, arg_1.d.a);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(-var_0), var_0, 1324f)));
    return _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-18860i, 1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 11892i, u_input.a.x))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(1973i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(0i, 8520i, -2147483647i, -44160i), vec4<i32>(arg_1.a.a, 2147483647i, arg_1.a.a, -34335i)), firstLeadingBit(abs(vec4<i32>(arg_1.a.a, u_input.a.x, -1i, 2147483647i)))), _wgslsmith_mult_vec4_i32(abs(select(vec4<i32>(arg_1.d.a, -37216i, 1i, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), vec4<bool>(true, true, false, arg_1.b))), ~vec4<i32>(u_input.a.x, u_input.a.x, -22744i, -21635i)), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(u_input.a.x, min(-33351i, u_input.a.x)), u_input.a.x, 2147483647i)));
}

fn func_5(arg_0: vec4<i32>) -> bool {
    var var_0 = select(select(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.c, 4294967295u, 35109u, u_input.b.x)), select(min(vec4<u32>(0u, u_input.c, 32569u, u_input.c), vec4<u32>(u_input.c, u_input.c, 15895u, 1u)), u_input.b, true), u_input.b), abs(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.c), u_input.b, u_input.b), u_input.b)), true), vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, firstTrailingBit(~u_input.c)), u_input.c, _wgslsmith_mod_u32(u_input.b.x, firstLeadingBit(~u_input.c)), ~func_3(Struct_3(u_input.c, Struct_2(Struct_1(u_input.a.x), true, vec3<u32>(u_input.c, 72392u, u_input.c), Struct_1(1i))))), global0.x > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(262f, -915f))))));
    var var_1 = Struct_2(Struct_1(~1i), any(select(vec4<bool>(true, true, true, 1677f <= global0.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false))), vec4<bool>(true, true, true, true))), abs(u_input.b.xyw), Struct_1(2147483647i));
    var_0 = u_input.b;
    let var_2 = (vec3<u32>(_wgslsmith_mod_u32(reverseBits(0u), 4294967295u << (u_input.b.x % 32u)), ~(~12644u), _wgslsmith_add_u32(var_1.c.x, var_0.x) & var_0.x) ^ (~vec3<u32>(59178u, u_input.b.x, var_1.c.x) ^ var_1.c)) | vec3<u32>(u_input.b.x, 69725u, firstLeadingBit(2954u));
    var var_3 = vec2<f32>(-539f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-852f))));
    return all(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec4<bool>(true, var_1.b, var_1.b, var_1.b))), vec2<bool>(false, var_1.b), !(!vec2<bool>(true, var_1.b))), select(!vec2<bool>(true, var_1.b), !vec2<bool>(var_1.b, false), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(var_1.b, var_1.b))));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    let var_0 = Struct_1(u_input.a.x);
    let var_1 = -_wgslsmith_div_i32(-68362i, _wgslsmith_add_i32(u_input.a.x, -(~u_input.a.x)));
    let var_2 = -331f;
    let var_3 = vec4<u32>(48445u, u_input.b.x >> ((u_input.c & reverseBits(abs(u_input.c))) % 32u), _wgslsmith_dot_vec3_u32(u_input.b.yyw, _wgslsmith_sub_vec3_u32(u_input.b.zwz, firstTrailingBit(abs(u_input.b.wwy)))), u_input.b.x);
    let var_4 = vec2<bool>(func_5(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, 60022i), reverseBits(vec4<i32>(var_0.a, var_1, 11234i, var_1)), func_2(u_input.b.x, Struct_2(var_0, true, vec3<u32>(u_input.c, 16882u, 73354u), var_0))) ^ (vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 1i, var_1, u_input.a.x))), !(!func_5(vec4<i32>(var_0.a, 1i, var_0.a, u_input.a.x))));
    return (~2745u >> (~_wgslsmith_sub_u32(354u, ~u_input.b.x) % 32u)) >= u_input.c;
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: f32, arg_3: vec3<f32>) -> vec2<i32> {
    var var_0 = Struct_2(arg_1.a.b.d, reverseBits(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_1.a.b.d.a, arg_1.a.b.d.a)), vec2<i32>(40801i, u_input.a.x))) != -32598i, firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, arg_1.a.a, 0u), _wgslsmith_div_vec3_u32(u_input.b.xyz, u_input.b.xwy)) >> (select(vec3<u32>(u_input.c, u_input.b.x, 0u), u_input.b.yzw, vec3<bool>(false, arg_0.x, arg_0.x)) % vec3<u32>(32u))), Struct_1(_wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i, u_input.a.x, arg_1.a.b.d.a), -8858i) & select(-2147483647i, u_input.a.x, func_1(vec3<f32>(arg_3.x, 1100f, -1000f)))));
    var_0 = arg_1.a.b;
    var_0 = arg_1.a.b;
    let var_1 = select(vec3<bool>(!var_0.b, _wgslsmith_mod_i32(arg_1.a.b.a.a, ~1i) >= -(var_0.a.a & arg_1.a.b.a.a), true), arg_0, true);
    var var_2 = var_0.d;
    return vec2<i32>(~(~2147483647i | min(u_input.a.x, arg_1.a.b.a.a)), -1i) & vec2<i32>(-1i, min(-1i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-26977i, var_2.a)), ~vec2<i32>(var_0.d.a, arg_1.a.b.d.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec3<bool>(true, !(true | func_1(vec3<f32>(920f, global0.x, global0.x))), false), Struct_4(Struct_3(0u, Struct_2(Struct_1(u_input.a.x), u_input.a.x == 0i, ~u_input.b.zxz, Struct_1(2147483647i)))), -1000f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(trunc(1608f)))) * vec3<f32>(467f, _wgslsmith_f_op_f32(-global0.x), global0.x)));
    let var_1 = _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x))))));
    let var_2 = Struct_1(-2147483647i);
    var var_3 = Struct_4(Struct_3(_wgslsmith_add_u32(u_input.c, _wgslsmith_mult_u32(countOneBits(u_input.b.x), 0u)), Struct_2(Struct_1(countOneBits(var_0.x)), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)), firstLeadingBit(vec3<u32>(1u, u_input.b.x, 11446u)), Struct_1(func_6(vec3<bool>(false, true, false), Struct_4(Struct_3(4294967295u, Struct_2(var_2, false, u_input.b.wwz, Struct_1(-2147483647i)))), -535f, global0.yxw).x))));
    let var_4 = u_input.c;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2587f, 259f, global0.x, var_1)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-524f, var_1, -269f, var_1))) * vec4<f32>(_wgslsmith_f_op_f32(global0.x - 888f), _wgslsmith_f_op_f32(-630f + global0.x), _wgslsmith_f_op_f32(-906f - -104f), var_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, -1221f, -853f) + vec4<f32>(-135f, var_1, 1750f, 930f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1385f, -1336f, global0.x) - vec4<f32>(-828f, global0.x, -1343f, 734f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-566f, global0.x, var_1, global0.x), vec4<f32>(var_1, -218f, global0.x, -522f)))))));
    let var_5 = abs(~89261u);
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global0.x)), var_1)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1329f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1))), var_3.a.b.b)), global0.x));
    let var_7 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(891f)), _wgslsmith_f_op_f32(floor(var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(-798f, _wgslsmith_mult_i32(var_0.x, ~var_3.a.b.a.a) >> (min(_wgslsmith_mod_u32(0u, 1u), u_input.c) % 32u), var_3.a.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_7) - -1367f)), 1927f);
}

