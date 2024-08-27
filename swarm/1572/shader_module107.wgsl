struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12>;

var<private> global1: array<u32, 14> = array<u32, 14>(1u, 0u, 0u, 1633u, 4294967295u, 29949u, 6064u, 4294967295u, 64059u, 0u, 40224u, 4294967295u, 4294967295u, 2474u);

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(vec2<bool>(false, false), vec2<u32>(29634u, 19920u), false), 26442u, Struct_1(vec2<bool>(false, false), vec2<u32>(22426u, 74870u), true), 4294967295u), Struct_2(Struct_1(vec2<bool>(true, true), vec2<u32>(4294967295u, 0u), true), 1u, Struct_1(vec2<bool>(true, true), vec2<u32>(1u, 30128u), false), 61585u), Struct_2(Struct_1(vec2<bool>(false, true), vec2<u32>(0u, 4294967295u), false), 4294967295u, Struct_1(vec2<bool>(false, false), vec2<u32>(107100u, 1u), false), 39411u), Struct_2(Struct_1(vec2<bool>(true, true), vec2<u32>(57306u, 4294967295u), true), 1u, Struct_1(vec2<bool>(false, false), vec2<u32>(44559u, 4294967295u), true), 40572u));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> bool {
    var var_0 = -(-2147483647i | ~reverseBits(-6168i | arg_0.x));
    global2 = array<Struct_2, 4>();
    var var_1 = 943f;
    global1 = array<u32, 14>();
    global2 = array<Struct_2, 4>();
    return any(!(!(!vec2<bool>(false, arg_1))));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: i32, arg_3: u32) -> f32 {
    let var_0 = u_input.a;
    global1 = array<u32, 14>();
    var var_1 = -vec3<i32>(-42772i, arg_2, -arg_2);
    let var_2 = global2[_wgslsmith_index_u32(abs(~arg_1), 4u)];
    var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -countOneBits(vec3<i32>(-2147483647i, -29319i, arg_2)), _wgslsmith_clamp_vec3_i32(select(-vec3<i32>(-2147483647i, var_1.x, 7220i), ~vec3<i32>(var_1.x, 12187i, 0i), select(vec3<bool>(var_2.c.c, var_2.c.a.x, false), vec3<bool>(false, var_2.a.c, var_2.c.a.x), vec3<bool>(false, var_2.c.a.x, true))), select(vec3<i32>(var_1.x, 1i, 1i), vec3<i32>(var_1.x, var_1.x, var_1.x) | vec3<i32>(0i, 2147483647i, -1i), all(vec3<bool>(true, true, var_2.c.c))), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, 12214i, arg_2) | vec3<i32>(-103787i, 2147483647i, var_1.x), vec3<i32>(-1i, -49271i, 2147483647i)))), min(firstTrailingBit(_wgslsmith_clamp_i32(-var_1.x, var_1.x, var_1.x)), 36338i), _wgslsmith_dot_vec2_i32(var_1.yz, vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(var_1.x, 105154i), ~var_1.x), _wgslsmith_clamp_i32(1i, arg_2, var_1.x))));
    return 1427f;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = func_1(vec2<i32>(_wgslsmith_mod_i32(~52490i, abs(~(-49686i))), _wgslsmith_clamp_i32(~1i, -47470i, i32(-1i) * -1i)), _wgslsmith_f_op_f32(f32(-1f) * -327f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 767f)), abs(global1[_wgslsmith_index_u32(16864u, 14u)]), countOneBits(0i), u_input.a.x))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(~reverseBits(vec2<u32>(28826u, arg_0) & vec2<u32>(u_input.a.x, arg_0))), abs(_wgslsmith_mod_vec2_u32(u_input.a, _wgslsmith_mod_vec2_u32(u_input.a, u_input.a)) ^ u_input.a)), 4u)];
    var var_2 = abs(min(-22477i, -1i));
    var var_3 = vec2<f32>(-1000f, arg_1.x);
    let var_4 = Struct_2(Struct_1(vec2<bool>(true, func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -30329i), vec2<i32>(-18604i, -2147483647i)), true)), select(select(vec2<u32>(0u, var_1.b), vec2<u32>(35284u, u_input.a.x), arg_2.x) >> (vec2<u32>(u_input.a.x, 40087u) % vec2<u32>(32u)), firstTrailingBit(reverseBits(vec2<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 14u)]))), !vec2<bool>(var_1.c.c, arg_2.x)), !select(var_1.c.a.x, false, arg_2.x)), min(40431u, u_input.a.x), Struct_1(vec2<bool>(!any(arg_2.zzw), true), ~firstTrailingBit(u_input.a), arg_2.x), ~1u);
    return var_4.c;
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    return vec4<bool>(arg_0.a.a.x, arg_0.c.a.x, !func_1(firstTrailingBit(vec2<i32>(-27707i, 2147483647i)) & _wgslsmith_sub_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(4575i, -67981i)), true), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, arg_0.c.c, arg_0.c.c, false), select(vec4<bool>(false, arg_0.a.c, true, arg_0.c.c), vec4<bool>(arg_0.c.c, arg_0.a.c, arg_0.c.a.x, true), arg_0.a.c), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -322i;
    let var_1 = Struct_1(vec2<bool>(select(any(vec2<bool>(true, false)), true, true), !func_1(~vec2<i32>(-1i, -1i), true)), abs(u_input.a), any(func_4(Struct_2(Struct_1(vec2<bool>(true, true), u_input.a, true), ~u_input.a.x, func_2(48552u, vec3<f32>(1279f, 934f, -537f), vec4<bool>(false, false, true, false)), 4294967295u | global1[_wgslsmith_index_u32(1u, 14u)]))));
    let var_2 = func_2(u_input.a.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0[_wgslsmith_index_u32(0u | u_input.a.x, 12u)]))))), vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2677f + 630f), -993f, !var_1.c)) >= _wgslsmith_f_op_f32(func_3(vec2<f32>(265f, -1208f), u_input.a.x, reverseBits(4350i), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(0u, 14u)], 19504u))), !var_1.c, func_1(abs(vec2<i32>(1i, 1i)), var_1.a.x), !var_1.a.x));
    let var_3 = _wgslsmith_dot_vec3_i32(max(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -2147483647i, -17856i) << (vec3<u32>(u_input.a.x, 1u, 12205u) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i)) & (vec3<i32>(-1i) * -vec3<i32>(-1i, 2147483647i, 1i)), min(_wgslsmith_add_vec3_i32(select(vec3<i32>(-2147483647i, -11325i, 1i), vec3<i32>(21300i, -2147483647i, 2147483647i), vec3<bool>(false, var_2.a.x, true)), abs(vec3<i32>(0i, 2147483647i, -22312i))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 11128i, -54042i), vec3<i32>(29507i, 42090i, -605i)))), max(~_wgslsmith_mult_vec3_i32(-vec3<i32>(-2147483647i, 1i, -12830i), vec3<i32>(1i, 1i, 1i)), ~vec3<i32>(i32(-1i) * -1i, 1i >> (0u % 32u), 9020i)));
    let var_4 = -(~var_3);
    let var_5 = ~vec3<i32>(-44130i, i32(-1i) * -var_3, _wgslsmith_mod_i32(~var_4, -29607i)) | vec3<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, 2147483647i, var_3) ^ vec3<i32>(2147483647i, -24772i, var_4), vec3<i32>(var_4, -30688i, var_4), true), vec3<i32>(24474i, 1i, var_4) & vec3<i32>(var_4, var_4, var_3)), var_4, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-136f, 449f)))))), reverseBits(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_5.x, var_5.x, 46287i, var_5.x), _wgslsmith_sub_vec4_i32(~vec4<i32>(-47371i, var_3, var_3, 1i), vec4<i32>(var_4, -1409i, var_4, var_4)))), ~(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(var_1.b.x, 14u)]), vec3<u32>(var_1.b.x, var_2.b.x, var_2.b.x)))), -((_wgslsmith_sub_vec3_i32(vec3<i32>(var_5.x, var_3, var_4), vec3<i32>(var_5.x, 7137i, -1i)) << (abs(vec3<u32>(u_input.a.x, 4294967295u, var_2.b.x)) % vec3<u32>(32u))) | select(_wgslsmith_mult_vec3_i32(var_5, vec3<i32>(1i, 6287i, var_4)), max(vec3<i32>(var_5.x, -17434i, var_5.x), vec3<i32>(-2147483647i, 1i, 40424i)), all(var_2.a))));
}

