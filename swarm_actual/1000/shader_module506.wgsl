struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<i32>(i32(-2147483648), -13631i, -25676i, 2147483647i), -28419i), Struct_1(vec4<i32>(0i, 10918i, -47151i, 0i), 28527i), Struct_1(vec4<i32>(25890i, 0i, 19422i, 15238i), 1i), Struct_1(vec4<i32>(-51799i, 0i, -17185i, -10143i), 0i), Struct_1(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 1i), -1i), Struct_1(vec4<i32>(-24993i, 0i, 1i, -1567i), 1i), Struct_1(vec4<i32>(23728i, i32(-2147483648), -41229i, 29851i), 47676i), Struct_1(vec4<i32>(-52028i, 0i, -3683i, 1i), -47762i), Struct_1(vec4<i32>(0i, -1i, -4896i, -1i), -71773i), Struct_1(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 1i), 14222i), Struct_1(vec4<i32>(1i, i32(-2147483648), 1i, 8255i), i32(-2147483648)), Struct_1(vec4<i32>(-9107i, i32(-2147483648), 19738i, -39624i), -18074i), Struct_1(vec4<i32>(0i, 0i, 0i, 1i), 2147483647i), Struct_1(vec4<i32>(-1756i, -3149i, 0i, -55924i), -32219i), Struct_1(vec4<i32>(2147483647i, 0i, -1i, 34038i), 0i), Struct_1(vec4<i32>(1i, i32(-2147483648), 2147483647i, 2147483647i), -1i), Struct_1(vec4<i32>(i32(-2147483648), 14371i, -1i, 30178i), 1i), Struct_1(vec4<i32>(29834i, 1i, -1i, -6431i), 63062i), Struct_1(vec4<i32>(-26983i, 3363i, i32(-2147483648), -59586i), 2147483647i), Struct_1(vec4<i32>(50424i, 0i, 46585i, -58261i), -1i), Struct_1(vec4<i32>(-51815i, 25556i, i32(-2147483648), 0i), 7568i), Struct_1(vec4<i32>(-1i, -8999i, 2147483647i, -42816i), -1i), Struct_1(vec4<i32>(2147483647i, 26239i, 2147483647i, 6595i), 3800i), Struct_1(vec4<i32>(0i, -25567i, -8858i, -25359i), 2147483647i));

var<private> global1: bool = false;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<bool> {
    let var_0 = -612f;
    var var_1 = ~global2.a.a.ww;
    global2 = Struct_2(global2.a, var_1.x, _wgslsmith_f_op_f32(-global2.c), global2.a);
    global0 = array<Struct_1, 24>();
    let var_2 = global2.c;
    return select(select(select(vec2<bool>(false, true), vec2<bool>(global2.d.b == 0i, true), vec2<bool>(true, true)), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(true, true, true)), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true))), vec2<bool>(true, true), !select(vec2<bool>(select(false, false, true), false), vec2<bool>(false, false), global2.c < _wgslsmith_f_op_f32(trunc(global2.c))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> i32 {
    let var_0 = vec4<bool>(all(vec2<bool>(true, true)) & false, !all(func_3()), true, !all(vec4<bool>(true, true, true, true)) & true);
    global1 = 0u > _wgslsmith_mult_u32(24357u, abs(select(~10333u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 1u), vec2<u32>(u_input.b.x, 1u)), any(var_0.yw))));
    let var_1 = any(vec3<bool>(var_0.x, min(abs(30075u), _wgslsmith_dot_vec4_u32(vec4<u32>(24639u, u_input.a.x, 93915u, u_input.c.x), u_input.d)) >= (u_input.c.x | 55065u), func_3().x | (countOneBits(u_input.c.x) < (u_input.b.x | 4294967295u))));
    let var_2 = Struct_1(-firstTrailingBit(arg_1.a.a), 1810i);
    global1 = var_1;
    return reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~(~arg_1.d.a), vec4<i32>(global2.d.b, var_2.b, ~0i, arg_1.d.b >> (u_input.b.x % 32u))), firstTrailingBit(abs(vec4<i32>(var_2.b, var_2.b, 1i, 33787i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 18436u, u_input.a.x, 4294967295u), vec4<u32>(15091u, u_input.b.x, u_input.a.x, 6474u)) % vec4<u32>(32u)))));
}

fn func_1() -> bool {
    return (_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(global2.d.a.x, global2.a.b), ~(-1i)), func_2(vec4<f32>(-104f, -1180f, global2.c, global2.c), Struct_2(Struct_1(global2.a.a, global2.d.b), -7481i, 119f, Struct_1(vec4<i32>(39016i, global2.a.b, 2147483647i, 69892i), global2.d.b)))) ^ countOneBits(global2.a.b)) != -(i32(-1i) * -(~(-2147483647i)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = global2.b;
    global2 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(firstLeadingBit(u_input.d.x), u_input.c.x) << (31389u % 32u), firstTrailingBit(_wgslsmith_add_u32(countOneBits(u_input.d.x), 33850u))), 24u)], 39229i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), arg_1.x, false))), Struct_1(vec4<i32>(_wgslsmith_div_i32(-2147483647i, -2147483647i), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(49667i, global2.a.b)), global2.a.a.zx & global2.a.a.zz), global2.d.b, _wgslsmith_mod_i32(global2.d.a.x, abs(17286i))), -27i));
    var_0 = 51277i;
    let var_1 = firstTrailingBit(countOneBits(~(~vec2<u32>(u_input.a.x, 99595u))));
    global0 = array<Struct_1, 24>();
    return Struct_2(Struct_1(global2.a.a, global2.a.b), 0i, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, 684f)), global2.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -631f))), true)), Struct_1(global2.a.a, abs(global2.d.a.x) >> (_wgslsmith_div_u32(~u_input.c.x, 1u) % 32u)));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>) -> bool {
    let var_0 = Struct_1(vec4<i32>(global2.b, _wgslsmith_clamp_i32(2147483647i, global2.b, _wgslsmith_add_i32(arg_1.x, arg_1.x) & global2.a.a.x), _wgslsmith_mult_i32(abs(arg_1.x), -1i ^ (global2.a.b & -25708i)), arg_0.d.a.x << (abs(u_input.d.x) % 32u)), i32(-1i) * -_wgslsmith_mult_i32(~arg_0.b, _wgslsmith_add_i32(0i, global2.a.a.x)));
    global2 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(func_4(vec3<bool>(func_3().x, false, arg_0.c <= 1454f), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c - global2.c))), 276f)).c + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-296f)))), ~u_input.a.x >= firstTrailingBit(u_input.b.x ^ u_input.a.x))));
    let var_2 = 161f;
    var var_3 = global0[_wgslsmith_index_u32(min(u_input.a.x, _wgslsmith_clamp_u32(max(_wgslsmith_add_u32(14871u, 2702u), abs(17247u)) ^ countOneBits(abs(u_input.b.x)), 108938u >> ((u_input.d.x ^ max(u_input.a.x, u_input.b.x)) % 32u), ~13608u)), 24u)];
    return !any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), func_3())));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!all(vec2<bool>(true, all(vec4<bool>(true, false, false, false)))), func_5(func_4(vec3<bool>(any(vec2<bool>(false, false)), func_1(), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2998f, -760f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.c, 1022f), vec2<f32>(-695f, 132f), vec2<bool>(true, true))))), -select(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -45500i, global2.a.a.x, -2147483647i), global2.d.a), global2.d.a, vec4<bool>(false, false, true, true))));
    let var_1 = any(vec3<bool>(false | (!var_0.x | !var_0.x), var_0.x, !(var_0.x | true)));
    global1 = all(vec4<bool>(var_1, !select(var_0.x, true, var_1), any(select(vec2<bool>(true, true), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_0.x), true), vec2<bool>(false, true))), true));
    let var_2 = select(vec4<u32>(u_input.c.x ^ u_input.c.x, ~u_input.d.x, ~(~22706u), _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(u_input.a.x, u_input.d.x))), _wgslsmith_div_vec4_u32(u_input.d, u_input.d), !var_0.x) | (u_input.d ^ (abs(~u_input.d) ^ u_input.d));
    var_0 = vec2<bool>(!var_1, var_1);
    global1 = all(select(vec4<bool>(var_1 || (false && var_1), global2.b < _wgslsmith_sub_i32(-29536i, 22264i), !(!var_0.x), any(vec2<bool>(var_1, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(var_1, var_0.x, var_1)), var_1 || var_1, !var_1, var_0.x), var_0.x && true), vec4<bool>(false, true, true, true)));
    let var_3 = _wgslsmith_f_op_f32(abs(global2.c));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(_wgslsmith_div_i32(1i, -8403i), _wgslsmith_clamp_i32(global2.d.b, global2.a.b, _wgslsmith_mult_i32(2147483647i, global2.a.a.x)))), vec3<f32>(global2.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(190f, _wgslsmith_div_f32(-258f, global2.c)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_3)), _wgslsmith_f_op_f32(abs(-265f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1031f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.c)) - _wgslsmith_f_op_f32(global2.c + 1000f)))), 0i, var_2 ^ vec4<u32>(~(~u_input.a.x), ~(~1u), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b) & (u_input.d.x ^ var_2.x), _wgslsmith_dot_vec4_u32(var_2, firstTrailingBit(vec4<u32>(4294967295u, 42740u, 7136u, var_2.x)))));
}

