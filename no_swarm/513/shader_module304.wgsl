struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(false, vec2<i32>(-50586i, 24826i), Struct_1(vec4<bool>(true, true, false, false), -1492f, vec3<u32>(1u, 11656u, 19542u), i32(-2147483648), 989f)), Struct_2(false, vec2<i32>(2147483647i, 2805i), Struct_1(vec4<bool>(true, true, true, true), -344f, vec3<u32>(38686u, 1u, 0u), -46954i, -2491f)), Struct_2(true, vec2<i32>(i32(-2147483648), 0i), Struct_1(vec4<bool>(true, false, false, false), 441f, vec3<u32>(0u, 1u, 22585u), 0i, 1000f)), Struct_2(false, vec2<i32>(-36339i, -2211i), Struct_1(vec4<bool>(true, true, true, false), 1000f, vec3<u32>(12554u, 60365u, 63139u), -23946i, -420f)), Struct_2(true, vec2<i32>(2147483647i, 0i), Struct_1(vec4<bool>(false, false, true, true), 1296f, vec3<u32>(80738u, 1009u, 73160u), 2914i, 1028f)), Struct_2(false, vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec4<bool>(false, false, true, true), -1881f, vec3<u32>(4294967295u, 1u, 0u), 2147483647i, 1306f)), Struct_2(false, vec2<i32>(-30485i, 1i), Struct_1(vec4<bool>(true, false, true, true), -738f, vec3<u32>(29063u, 9134u, 0u), 0i, 425f)), Struct_2(false, vec2<i32>(-38850i, i32(-2147483648)), Struct_1(vec4<bool>(true, true, true, true), -957f, vec3<u32>(25809u, 0u, 41226u), -9098i, -1000f)), Struct_2(true, vec2<i32>(1i, -14643i), Struct_1(vec4<bool>(false, true, true, true), 190f, vec3<u32>(1u, 24832u, 37840u), 0i, -1471f)), Struct_2(true, vec2<i32>(10413i, i32(-2147483648)), Struct_1(vec4<bool>(false, false, true, true), 388f, vec3<u32>(55463u, 22306u, 0u), 21833i, 1400f)), Struct_2(true, vec2<i32>(-4846i, 31411i), Struct_1(vec4<bool>(true, true, true, false), 724f, vec3<u32>(38436u, 126938u, 0u), 1i, -318f)), Struct_2(false, vec2<i32>(-10140i, 10722i), Struct_1(vec4<bool>(true, false, true, false), -1152f, vec3<u32>(10654u, 0u, 16750u), -31194i, -1473f)), Struct_2(true, vec2<i32>(-36183i, 35120i), Struct_1(vec4<bool>(true, false, false, false), 1273f, vec3<u32>(1u, 0u, 12709u), 34212i, 2429f)));

var<private> global1: Struct_2 = Struct_2(true, vec2<i32>(2147483647i, 11087i), Struct_1(vec4<bool>(false, true, false, false), 319f, vec3<u32>(0u, 8039u, 16106u), -24920i, -476f));

var<private> global2: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(4294967295u, 39470u, 1u, 4294967295u), vec4<u32>(26597u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 1u, 44031u, 1u), vec4<u32>(30544u, 4217u, 57350u, 18393u), vec4<u32>(50112u, 1u, 12499u, 71125u), vec4<u32>(0u, 71297u, 8703u, 39965u), vec4<u32>(0u, 80529u, 6535u, 4294967295u), vec4<u32>(46541u, 10501u, 1u, 0u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>) -> vec3<i32> {
    var var_0 = ~54598u;
    var_0 = countOneBits(arg_0.x);
    let var_1 = any(arg_1.wz);
    return ~vec3<i32>(~max(0i & global1.b.x, ~1i), -_wgslsmith_sub_i32(global1.c.d << (arg_0.x % 32u), 28525i), _wgslsmith_dot_vec3_i32(u_input.b, -u_input.b));
}

fn func_3() -> i32 {
    global1 = Struct_2(global1.c.a.x != true, vec2<i32>(17794i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, u_input.a.x, 0i), u_input.b, global1.a) ^ _wgslsmith_div_vec3_i32(u_input.b, u_input.b), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -22649i, 0i), reverseBits(vec3<i32>(2147483647i, global1.c.d, global1.c.d))))), global1.c);
    var var_0 = Struct_2(global1.a, vec2<i32>(-1i) * -vec2<i32>(~global1.c.d, _wgslsmith_sub_i32(global1.c.d, -2147483647i)), Struct_1(select(global1.c.a, !(!vec4<bool>(global1.a, false, global1.a, global1.c.a.x)), select(global1.c.a, global1.c.a, !global1.c.a)), _wgslsmith_f_op_f32(-270f * _wgslsmith_f_op_f32(sign(global1.c.e))), global1.c.c, global1.c.d, _wgslsmith_f_op_f32(round(1000f))));
    global1 = Struct_2(!(global1.c.b <= 348f), _wgslsmith_mult_vec2_i32(vec2<i32>(-firstTrailingBit(10284i), _wgslsmith_mod_i32(u_input.a.x << (global1.c.c.x % 32u), var_0.b.x)), vec2<i32>(-1i, -1i)), Struct_1(vec4<bool>(false, true, true, true & !global1.a), _wgslsmith_div_f32(var_0.c.b, _wgslsmith_f_op_f32(trunc(var_0.c.b))), vec3<u32>(~(global1.c.c.x ^ var_0.c.c.x), abs(~var_0.c.c.x), 67078u), 2147483647i, 1130f));
    global0 = array<Struct_2, 13>();
    global2 = array<vec4<u32>, 8>();
    return (firstLeadingBit(-_wgslsmith_div_i32(global1.c.d, var_0.b.x)) << (global1.c.c.x % 32u)) | firstTrailingBit(_wgslsmith_mod_i32(firstTrailingBit(4225i), i32(-1i) * -29028i));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    global0 = array<Struct_2, 13>();
    var var_0 = min(vec3<u32>(~arg_0.c.x, 6575u, ~(~(~0u))), vec3<u32>(~global1.c.c.x, ~(u_input.c & ~u_input.c), _wgslsmith_div_u32(~global1.c.c.x, 4294967295u)));
    var var_1 = _wgslsmith_mult_vec3_i32(func_2(var_0.zy, vec4<bool>(true, _wgslsmith_f_op_f32(-global1.c.e) == arg_0.e, global1.a, !global1.a)), select(vec3<i32>(_wgslsmith_div_i32(func_3(), global1.b.x | u_input.b.x), func_2(_wgslsmith_add_vec2_u32(var_0.zy, vec2<u32>(1715u, u_input.c)), !arg_0.a).x, global1.c.d), vec3<i32>(u_input.a.x, u_input.a.x ^ -1i, arg_0.d), !vec3<bool>(all(vec3<bool>(false, arg_0.a.x, true)), true, true)));
    var var_2 = ~firstTrailingBit(~var_0.x) & ~(~81871u);
    let var_3 = Struct_1(select(!(!(!global1.c.a)), vec4<bool>(false, _wgslsmith_f_op_f32(floor(1194f)) >= 151f, arg_0.a.x, all(vec2<bool>(global1.c.a.x, false))), select(arg_0.a.x, true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - arg_0.b) * _wgslsmith_f_op_f32(step(-1440f, _wgslsmith_f_op_f32(sign(global1.c.b))))) + _wgslsmith_f_op_f32(774f - _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(global1.c.e, 1790f))))), ~(~arg_0.c), arg_0.d, 1f);
    return _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(var_0.zx, vec2<u32>(~10654u, arg_0.c.x)), ~vec2<u32>((var_0.x ^ 14422u) | var_3.c.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.xz, vec2<u32>(1u, var_0.x)), ~vec2<u32>(1u, 21119u))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    global2 = array<vec4<u32>, 8>();
    let var_0 = select(_wgslsmith_sub_vec2_i32(reverseBits(func_2(global1.c.c.yz, !global1.c.a).zz), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i) | vec2<i32>(arg_1.c.d, global1.b.x), _wgslsmith_div_vec2_i32(global1.b, vec2<i32>(2682i, -19633i))) & -global1.b), global1.b, global1.a);
    var var_1 = min(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, 13895i, var_0.x, 57707i)), firstTrailingBit(vec4<i32>(arg_0.b.x, -1i, arg_2, arg_0.c.d))), _wgslsmith_mult_vec4_i32(min(vec4<i32>(arg_1.b.x, -1i, arg_0.b.x, var_0.x), vec4<i32>(arg_2, var_0.x, global1.c.d, arg_0.b.x)), -vec4<i32>(global1.b.x, 2147483647i, global1.c.d, arg_1.b.x))) & vec4<i32>(~1i, -11740i, ~u_input.a.x, ~u_input.a.x), vec4<i32>(24032i, -(~arg_1.b.x) << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c, arg_0.c.c.x), 1u) % 32u), 0i, -1i));
    let var_2 = global1.c.c.yx;
    let var_3 = ~(~(vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, arg_0.b.x)));
    return Struct_2(all(select(select(vec3<bool>(global1.a, global1.a, true), vec3<bool>(false, global1.c.a.x, false), true), vec3<bool>(false, arg_1.a | true, true), global1.c.a.xzx)), abs(vec2<i32>(~0i, 1i >> (global1.c.c.x % 32u))), arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(true, true, all(global1.c.a.xyz)));
    global1 = func_4(Struct_2(!(~u_input.c <= max(0u, global1.c.c.x)), (~global1.b >> (func_1(Struct_1(global1.c.a, global1.c.b, global1.c.c, -20954i, global1.c.b)) % vec2<u32>(32u))) << (reverseBits(global1.c.c.zy) % vec2<u32>(32u)), Struct_1(select(!vec4<bool>(false, var_0.x, false, false), select(vec4<bool>(var_0.x, global1.a, true, true), vec4<bool>(var_0.x, true, global1.c.a.x, var_0.x), global1.c.a.x), global1.c.a), -1100f, vec3<u32>(1u << (u_input.c % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(164533u, global1.c.c.x), global1.c.c.yz), ~0u), i32(-1i) * -u_input.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.c.b * -1000f))))), Struct_2(true, ~global1.b, global1.c), func_2(~(min(global1.c.c.zy, global1.c.c.xy) & vec2<u32>(126298u, 29875u)), global1.c.a).x);
    let var_1 = global1.c.c.zx;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(trunc(global1.c.e)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * func_4(global0[_wgslsmith_index_u32(var_1.x, 13u)], Struct_2(var_0.x, global1.b, Struct_1(global1.c.a, 1236f, global1.c.c, -15464i, global1.c.b)), 40185i).c.e) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-176f - 740f)))), global1.b, global1.c);
    let var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(var_2.c.c, vec3<u32>(global1.c.c.x, ~var_1.x, u_input.c)), vec3<i32>(-func_2(global1.c.c.zz, !vec4<bool>(false, false, true, var_2.a)).x, -u_input.a.x, global1.b.x), ~16234u, firstLeadingBit(~(~u_input.a)), vec2<i32>(_wgslsmith_add_i32(-var_3, -1i) << (reverseBits(_wgslsmith_add_u32(var_1.x, 16753u)) % 32u), -_wgslsmith_div_i32(select(global1.c.d, 1099i, global1.c.a.x), -global1.c.d)));
}

