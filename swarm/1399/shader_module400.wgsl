struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(1i, vec3<bool>(true, false, false)), Struct_2(-1i, vec3<bool>(true, false, true)), Struct_2(18850i, vec3<bool>(false, true, true)), Struct_2(-1i, vec3<bool>(false, true, false)), Struct_2(-6685i, vec3<bool>(true, true, true)), Struct_2(9676i, vec3<bool>(false, true, true)), Struct_2(-1i, vec3<bool>(true, false, false)));

var<private> global2: Struct_2;

var<private> global3: array<Struct_3, 24>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> f32 {
    let var_0 = arg_1.x;
    global1 = array<Struct_2, 7>();
    let var_1 = Struct_3(Struct_1(433f, _wgslsmith_add_i32(2147483647i, _wgslsmith_add_i32(_wgslsmith_add_i32(global2.a, 39471i), -36336i)), 1i, vec3<u32>(_wgslsmith_sub_u32(1u, 1u), firstLeadingBit(max(1u, 13741u)), 0u), 2147483647i), _wgslsmith_mod_u32(74396u, ~4294967295u ^ select(0u, 24660u, false)) >= 83827u, var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(step(1191f, _wgslsmith_f_op_f32(var_0 * 282f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - arg_1.x))));
    var var_2 = false;
    global3 = array<Struct_3, 24>();
    return arg_1.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = 1i;
    let var_1 = Struct_2(global2.a, vec3<bool>(any(select(vec2<bool>(global2.b.x, global2.b.x), arg_0.wz, vec2<bool>(true, global2.b.x))) & true, arg_0.x, true));
    var var_2 = ~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(10503u, arg_1.d.x, 4294967295u, 8731u), vec4<u32>(78258u, arg_1.d.x, 67337u, 29744u) ^ vec4<u32>(1u, 1u, arg_1.d.x, arg_1.d.x)) | vec4<u32>(arg_1.d.x ^ 4294967295u, ~19151u, 35089u, arg_1.d.x), vec4<u32>(~reverseBits(arg_1.d.x), arg_1.d.x >> (_wgslsmith_mult_u32(arg_1.d.x, arg_1.d.x) % 32u), _wgslsmith_mod_u32(40164u, arg_1.d.x), abs(1u)));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(step(arg_2, arg_1.a)), firstLeadingBit(~(~arg_1.c)), var_1.a << (var_2.x % 32u), ~arg_1.d, global2.a), !(!(~1u < ~var_2.x)), -841f, vec4<f32>(-1242f, _wgslsmith_div_f32(-1350f, _wgslsmith_f_op_f32(-arg_2)), 321f, _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(exp2(arg_2)))));
    let var_4 = abs(var_2.x);
    return var_4;
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    let var_0 = vec4<bool>(!any(vec2<bool>(true, true)), !global2.b.x, !all(global2.b.zx), false);
    let var_1 = global3[_wgslsmith_index_u32(func_4(var_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.d.xy, vec3<f32>(175f, 436f, 666f)))), ~(-2147483647i), global2.a, min(~vec3<u32>(36264u, 0u, 22057u), vec3<u32>(5806u, 0u, 15674u)), -9209i << (firstLeadingBit(~0u) % 32u)), _wgslsmith_div_f32(-184f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2898f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(207f, 1000f, global2.b.x)))))), 24u)];
    var var_2 = all(select(select(vec2<bool>(true, true), arg_0.zz, !(!vec2<bool>(false, arg_0.x))), !select(var_0.xy, vec2<bool>(true, true), true), var_1.b));
    let var_3 = Struct_2(_wgslsmith_mult_i32(~var_1.a.e, -34210i), global2.b);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) * _wgslsmith_f_op_f32(-var_1.c)))) + var_1.a.a);
    return -var_1.a.e;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>) -> i32 {
    let var_0 = Struct_2(4395i, arg_1);
    let var_1 = Struct_3(Struct_1(-905f, ~func_2(select(vec4<bool>(true, true, global2.b.x, true), vec4<bool>(var_0.b.x, var_0.b.x, false, false), global2.b.x)), global2.a, vec3<u32>(arg_0.a.d.x | ~1u, arg_0.a.d.x, _wgslsmith_clamp_u32(11721u, 0u, _wgslsmith_mult_u32(arg_0.a.d.x, 26533u))), global2.a), any(vec3<bool>(arg_0.b, var_0.b.x | true, !any(arg_1.zx))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.a)) + -879f) - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(arg_0.d.x)))), 272f), _wgslsmith_f_op_vec4_f32(sign(arg_0.d)));
    global2 = global1[_wgslsmith_index_u32(0u, 7u)];
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(98485u), var_1.a.d.x), 7u)];
    global3 = array<Struct_3, 24>();
    return ~var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~select(~vec4<u32>(6971u, 7643u, 1u, 8942u), select(vec4<u32>(25673u, 4294967295u, 3301u, 25256u), vec4<u32>(24733u, 0u, 0u, 2792u), vec4<bool>(true, true, false, global2.b.x)), vec4<bool>(global2.b.x, global2.b.x, global2.b.x, false)), ~(~vec4<u32>(1u, 1u, 1u, 1u))), ~firstLeadingBit(vec4<u32>(1u, 14743u, 4294967295u, 0u)) >> (vec4<u32>(~4922u, abs(92865u), 18688u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 29354u, 4294967295u, 6915u), ~vec4<u32>(1u, 0u, 7871u, 4294967295u))) % vec4<u32>(32u))), 24u)];
    var var_1 = var_0.a.d.x;
    global2 = Struct_2(select(i32(-1i) * -func_1(global3[_wgslsmith_index_u32(1u, 24u)], vec3<bool>(var_0.b, global2.b.x, var_0.b)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, 30713i), u_input.d.x) & func_1(Struct_3(var_0.a, global2.b.x, 139f, vec4<f32>(var_0.d.x, var_0.c, var_0.a.a, 1281f)), vec3<bool>(true, var_0.b, false)), var_0.b), !vec3<bool>(any(global2.b.yx), var_0.b, false));
    var_0 = global3[_wgslsmith_index_u32(19719u, 24u)];
    var_1 = 0u;
    var var_2 = Struct_1(490f, abs(1i), var_0.a.b, vec3<u32>(var_0.a.d.x, _wgslsmith_clamp_u32(~var_0.a.d.x << (~var_0.a.d.x % 32u), abs(_wgslsmith_add_u32(4294967295u, var_0.a.d.x)), ~select(43896u, var_0.a.d.x, true)), _wgslsmith_sub_u32(firstTrailingBit(~1u), reverseBits(var_0.a.d.x))), 1i);
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.a.b, max(-(vec4<i32>(5027i, 21268i, -20710i, 24352i) & _wgslsmith_div_vec4_i32(vec4<i32>(var_2.b, u_input.b, var_2.e, 17565i), vec4<i32>(0i, 5639i, var_0.a.b, 66104i))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.e, 0i, -14997i, 11233i) & abs(vec4<i32>(-1i, var_0.a.e, -47032i, u_input.c.x)), vec4<i32>(2147483647i, u_input.d.x, global2.a, -28696i) ^ (vec4<i32>(-10957i, 2075i, 87993i, global2.a) & vec4<i32>(-42775i, 5276i, -748i, 8144i)))), _wgslsmith_div_i32(_wgslsmith_mult_i32(~1i, global2.a), -u_input.d.x), min(var_2.c, _wgslsmith_div_i32(var_0.a.e, _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_0.a.e, 29275i), -22185i))), -abs(u_input.c));
}

