struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: u32,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(40592u, 73279u, 45u), vec3<u32>(4294967295u, 39785u, 39896u), vec3<u32>(8535u, 68527u, 1u), vec3<u32>(28951u, 1u, 0u), vec3<u32>(53739u, 48302u, 45823u), vec3<u32>(0u, 83033u, 0u), vec3<u32>(0u, 47176u, 334u), vec3<u32>(58656u, 0u, 1u), vec3<u32>(55610u, 61413u, 0u), vec3<u32>(49035u, 1u, 86266u), vec3<u32>(1u, 48148u, 102222u), vec3<u32>(1u, 4294967295u, 10516u), vec3<u32>(4294967295u, 1u, 15557u), vec3<u32>(83265u, 81656u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(54952u, 1u, 68698u), vec3<u32>(18142u, 77184u, 25690u), vec3<u32>(1u, 41127u, 13216u), vec3<u32>(37693u, 59045u, 1u), vec3<u32>(52925u, 0u, 4294967295u), vec3<u32>(25005u, 4294967295u, 26954u), vec3<u32>(1u, 4294967295u, 35702u), vec3<u32>(4294967295u, 708u, 1u), vec3<u32>(44514u, 24878u, 15131u), vec3<u32>(27827u, 114155u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 69292u, 7957u), vec3<u32>(0u, 4137u, 1u), vec3<u32>(0u, 28618u, 55201u), vec3<u32>(13507u, 3415u, 4294967295u), vec3<u32>(0u, 0u, 4294967295u));

var<private> global1: f32 = -589f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = Struct_5(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(26686u, 4294967295u), vec2<u32>(86191u, 25646u), vec2<u32>(1u, 0u))), !vec4<bool>(!any(vec3<bool>(true, true, false)), true, true, false));
    let var_1 = Struct_5(~_wgslsmith_sub_vec2_u32(abs(_wgslsmith_div_vec2_u32(var_0.a, var_0.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x) >> (vec2<u32>(var_0.a.x, var_0.a.x) % vec2<u32>(32u)), vec2<u32>(var_0.a.x, 29202u))), var_0.b);
    var var_2 = true;
    let var_3 = Struct_4(Struct_2(_wgslsmith_div_vec2_i32(select(firstTrailingBit(vec2<i32>(u_input.a, 1i)), vec2<i32>(1i, u_input.a), 0u > var_0.a.x), countOneBits(-vec2<i32>(-9026i, u_input.a))), Struct_1(reverseBits(-16518i), vec3<u32>(var_0.a.x, var_1.a.x, 15249u), _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, 2147483647i), 0i))), Struct_3(Struct_2(max(vec2<i32>(u_input.a, 31561i), firstTrailingBit(vec2<i32>(-1i, 21641i))), Struct_1(u_input.a, vec3<u32>(1u, 229u, var_1.a.x) >> (global0[_wgslsmith_index_u32(8123u, 31u)] % vec3<u32>(32u)), 0i)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, 1i))), vec2<i32>(u_input.a & u_input.a, -18486i)), _wgslsmith_mod_u32(~select(var_0.a.x, var_0.a.x, false), ~1u), true, Struct_2(vec2<i32>(firstTrailingBit(u_input.a), reverseBits(2147483647i)), Struct_1(u_input.a & -2147483647i, global0[_wgslsmith_index_u32(var_0.a.x, 31u)], ~17778i))), var_1.b, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1389f, 567f, _wgslsmith_f_op_f32(f32(-1f) * -785f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-409f, 103f, -1894f))), true)))));
    global0 = array<vec3<u32>, 31>();
    return ~(min(-1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_3.b.e.a.x, -1i, 858i), 1i)) << ((_wgslsmith_sub_u32(var_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1753u, var_1.a.x, var_1.a.x, 0u), vec4<u32>(0u, 48602u, var_1.a.x, 17700u))) << (_wgslsmith_clamp_u32(var_0.a.x, var_3.a.b.b.x, var_1.a.x) % 32u)) % 32u));
}

fn func_2() -> vec2<i32> {
    var var_0 = -vec2<i32>(u_input.a, -u_input.a >> (_wgslsmith_div_u32(1u, 4294967295u) % 32u));
    global1 = 592f;
    var var_1 = vec4<u32>(~12163u, ~1u, ~0u, max(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), vec3<u32>(abs(1u), ~0u, 99892u)), firstTrailingBit(firstLeadingBit(1u))));
    global0 = array<vec3<u32>, 31>();
    var_0 = vec2<i32>(-_wgslsmith_add_i32(func_3(), firstTrailingBit(var_0.x) >> (~55773u % 32u)), ~(-25328i));
    return -reverseBits(~vec2<i32>(u_input.a, u_input.a ^ u_input.a));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec2<bool>) -> vec2<u32> {
    var var_0 = Struct_2(-(~func_2()), Struct_1(max(u_input.a, u_input.a), vec3<u32>(reverseBits(4294967295u), 0u, abs(66796u)), -1i));
    var_0 = Struct_2(_wgslsmith_mult_vec2_i32(var_0.a, -min(~var_0.a, ~var_0.a)), var_0.b);
    var_0 = Struct_2(vec2<i32>(_wgslsmith_clamp_i32(-_wgslsmith_div_i32(u_input.a, u_input.a), _wgslsmith_mult_i32(var_0.b.c ^ u_input.a, u_input.a), u_input.a), u_input.a), var_0.b);
    global1 = arg_1;
    var_0 = Struct_2(select(vec2<i32>(-12928i, ~u_input.a), vec2<i32>(0i, -61748i), any(vec3<bool>(true || arg_2.x, true, arg_1 >= -743f))), Struct_1((i32(-1i) * -2147483647i) & ~(var_0.a.x ^ -5801i), abs(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(var_0.b.b.x, var_0.b.b.x, 4294967295u), global0[_wgslsmith_index_u32(var_0.b.b.x, 31u)], vec3<bool>(false, arg_2.x, arg_2.x)), global0[_wgslsmith_index_u32(var_0.b.b.x, 31u)], ~var_0.b.b)), var_0.b.c));
    return var_0.b.b.zz;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1296f + -1000f)), 1967f)) - _wgslsmith_f_op_f32(-1f));
    let var_0 = ~(-1i);
    var var_1 = Struct_2(~vec2<i32>(25174i, -u_input.a) << (select(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(func_1(-1340f, -1000f, vec2<bool>(false, true)), ~vec2<u32>(1u, 40181u)), select(vec2<bool>(true, false), vec2<bool>(true, true), true)) % vec2<u32>(32u)), Struct_1(~var_0, ~global0[_wgslsmith_index_u32(min(func_1(236f, -932f, vec2<bool>(false, false)).x, ~51576u), 31u)], abs(var_0)));
    var var_2 = ~(~(-min(vec4<i32>(-2147483647i, -71797i, -43354i, 1i) & vec4<i32>(u_input.a, 63705i, var_0, var_0), vec4<i32>(var_1.a.x, u_input.a, var_1.b.c, u_input.a))));
    var_2 = ~vec4<i32>(35627i, var_1.b.c, _wgslsmith_mod_i32(~(~34896i), u_input.a), func_2().x);
    let var_3 = Struct_3(Struct_2(var_1.a, Struct_1(u_input.a, select(var_1.b.b >> (vec3<u32>(var_1.b.b.x, var_1.b.b.x, var_1.b.b.x) % vec3<u32>(32u)), vec3<u32>(0u, 63629u, 1u) & vec3<u32>(4294967295u, var_1.b.b.x, var_1.b.b.x), any(vec3<bool>(false, false, false))), func_2().x)), max(~(-abs(var_2.zx)), var_1.a), ~(var_1.b.b.x ^ var_1.b.b.x), true, Struct_2(_wgslsmith_mod_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(685i, u_input.a), vec2<i32>(var_2.x, 0i))), var_2.zx), Struct_1(2147483647i, global0[_wgslsmith_index_u32(var_1.b.b.x, 31u)], ~_wgslsmith_dot_vec2_i32(vec2<i32>(6120i, var_2.x), vec2<i32>(var_2.x, var_0)))));
    var var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~16109u & abs(var_1.b.b.x)), ~select(min(4294967295u, var_3.e.b.b.x), var_4.b.b.x, !var_3.d)), ~(vec4<i32>(abs(u_input.a), _wgslsmith_clamp_i32(var_0, var_1.a.x, var_2.x), reverseBits(-70423i), _wgslsmith_div_i32(-2147483647i, 58i)) ^ (min(vec4<i32>(-4868i, -2147483647i, u_input.a, var_4.b.c), vec4<i32>(var_1.a.x, u_input.a, 2147483647i, var_2.x)) | ~vec4<i32>(13334i, var_0, var_4.b.c, var_0))), var_1.b.b.zx, firstLeadingBit(-(_wgslsmith_add_vec3_i32(var_2.wzx, vec3<i32>(-2147483647i, -2147483647i, 1i)) >> (~vec3<u32>(var_3.c, var_4.b.b.x, 36047u) % vec3<u32>(32u)))));
}

