struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(41523u, 6019u, 62980u, 1u), vec4<u32>(42037u, 29106u, 4294967295u, 19180u), vec4<u32>(58362u, 1u, 53162u, 0u), vec4<u32>(79994u, 14702u, 52036u, 0u), vec4<u32>(35535u, 41514u, 0u, 1u), vec4<u32>(6117u, 1u, 41204u, 59679u), vec4<u32>(1u, 0u, 9526u, 862u), vec4<u32>(4294967295u, 13953u, 4294967295u, 33084u), vec4<u32>(5280u, 85446u, 4791u, 5202u), vec4<u32>(4294967295u, 1u, 1u, 16496u), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(4294967295u, 0u, 56329u, 0u), vec4<u32>(18368u, 3369u, 22363u, 44973u), vec4<u32>(74104u, 4294967295u, 27670u, 8142u), vec4<u32>(59576u, 122887u, 51445u, 1u), vec4<u32>(17396u, 40464u, 23050u, 1u), vec4<u32>(4294967295u, 78235u, 44521u, 31673u), vec4<u32>(4294967295u, 0u, 54026u, 45265u), vec4<u32>(1u, 4294967295u, 29404u, 39862u), vec4<u32>(90708u, 84339u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 16524u), vec4<u32>(4294967295u, 27054u, 48278u, 47349u), vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(69577u, 0u, 1u, 4294967295u), vec4<u32>(92133u, 1u, 15738u, 1u), vec4<u32>(6930u, 30484u, 95250u, 0u), vec4<u32>(0u, 1u, 1u, 46063u), vec4<u32>(19301u, 1u, 0u, 132516u));

var<private> global2: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = Struct_1(arg_2.yxy, _wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-348f, arg_1.b.x, var_0.b.x, arg_1.b.x), vec4<f32>(arg_1.b.x, 1000f, 222f, var_0.b.x))))))), vec2<bool>(var_0.c.x, arg_1.c.x), ~arg_1.d);
    var var_2 = Struct_1(vec3<u32>(abs(_wgslsmith_div_u32(arg_2.x, 5568u)), ~866u, ~var_0.a.x), _wgslsmith_f_op_vec4_f32(-var_0.b), !arg_1.c, 0i);
    var var_3 = Struct_2(var_1, _wgslsmith_add_u32(1u, abs(1u)), var_1);
    let var_4 = vec4<f32>(2072f, 671f, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(-384f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.b.x) + _wgslsmith_f_op_f32(-1f))));
    return Struct_2(Struct_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.x, var_1.a.x, 74337u), vec3<u32>(0u, 28375u, var_2.a.x)), var_1.b, !(!var_3.a.c), -1096i), 4294967295u << (((countOneBits(var_3.c.a.x) | reverseBits(arg_1.a.x)) | 21412u) % 32u), var_3.a);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: i32) -> vec2<bool> {
    let var_0 = -(~vec4<i32>(arg_1.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(25233i, u_input.a), global0.x), 1i, ~(2147483647i << (arg_0.a.a.x % 32u))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(~arg_0.a.a, _wgslsmith_mod_vec3_u32(arg_0.a.a, arg_0.c.a)) << (arg_0.c.a % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1513f, -385f, arg_0.a.b.x, arg_0.a.b.x)))), !func_2(1022f, func_2(arg_0.c.b.x, Struct_1(vec3<u32>(arg_0.c.a.x, arg_0.c.a.x, 9671u), vec4<f32>(arg_0.a.b.x, -1147f, arg_0.a.b.x, arg_0.a.b.x), vec2<bool>(arg_0.c.c.x, arg_0.c.c.x), 2147483647i), global1[_wgslsmith_index_u32(arg_0.c.a.x, 28u)]).a, ~global1[_wgslsmith_index_u32(arg_0.c.a.x, 28u)]).c.c, var_0.x), _wgslsmith_mod_u32(0u, countOneBits(max(max(arg_0.a.a.x, arg_0.b), 1u << (arg_0.a.a.x % 32u)))), func_2(arg_0.a.b.x, func_2(_wgslsmith_f_op_f32(-arg_0.a.b.x), func_2(arg_0.c.b.x, func_2(arg_0.c.b.x, Struct_1(vec3<u32>(arg_0.a.a.x, 1u, 4294967295u), arg_0.c.b, arg_0.c.c, 8121i), vec4<u32>(1u, 4294967295u, 36147u, 35008u)).a, global1[_wgslsmith_index_u32(arg_0.b, 28u)] ^ global1[_wgslsmith_index_u32(arg_0.a.a.x, 28u)]).a, ~global1[_wgslsmith_index_u32(arg_0.b, 28u)]).a, ~(~global1[_wgslsmith_index_u32(arg_0.a.a.x, 28u)]) | ~global1[_wgslsmith_index_u32(arg_0.b, 28u)]).c);
    let var_2 = var_1.c;
    return func_2(_wgslsmith_f_op_f32(-var_2.b.x), Struct_1(vec3<u32>(~var_2.a.x, arg_0.a.a.x, _wgslsmith_add_u32(~var_1.b, var_1.c.a.x & 74110u)), vec4<f32>(_wgslsmith_f_op_f32(step(var_1.c.b.x, _wgslsmith_f_op_f32(min(1081f, arg_0.a.b.x)))), arg_0.c.b.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1760f))), select(func_2(var_1.c.b.x, func_2(var_1.c.b.x, var_2, vec4<u32>(4294967295u, 4294967295u, 22455u, arg_0.a.a.x)).c, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.a.x, 1u), vec2<u32>(0u, 4294967295u)), 28u)]).a.c, vec2<bool>(func_2(916f, Struct_1(arg_0.c.a, var_2.b, vec2<bool>(true, true), -1i), vec4<u32>(0u, arg_0.b, var_1.b, 30830u)).a.c.x, var_1.a.d > -13480i), _wgslsmith_dot_vec2_u32(var_1.c.a.zy, var_2.a.yx) == reverseBits(1u)), ~arg_1.x), ~(~abs(global1[_wgslsmith_index_u32(reverseBits(var_2.a.x), 28u)]))).a.c;
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(144f, -680f, 166f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-415f, 346f, -976f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(693f))), 589f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(364f, -601f)) + -1803f))));
    var var_1 = Struct_1(_wgslsmith_mod_vec3_u32(min(vec3<u32>(1u, 1u, 1u), vec3<u32>(abs(25426u), 1u, 1u)), countOneBits(vec3<u32>(_wgslsmith_div_u32(1u, 1u), ~1u, 1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-245f, -1000f, var_0.x, var_0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -2204f, var_0.x, var_0.x), vec4<f32>(var_0.x, 1212f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1116f, var_0.x, 837f)))))), !(!func_3(func_2(var_0.x, Struct_1(vec3<u32>(0u, 0u, 33935u), vec4<f32>(1000f, var_0.x, 1169f, -345f), vec2<bool>(arg_0.x, arg_0.x), -1i), global1[_wgslsmith_index_u32(1264u, 28u)]), vec3<i32>(u_input.a, u_input.a, -1i), countOneBits(global0.x))), global0.x & (~(-75812i) ^ u_input.a));
    var var_2 = _wgslsmith_f_op_f32(exp2(var_0.x));
    global1 = array<vec4<u32>, 28>();
    return ~var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_u32(1u, firstLeadingBit(4294967295u) ^ _wgslsmith_add_u32(~0u, func_1(global2[_wgslsmith_index_u32(1u, 19u)])));
    global0 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, 0i) ^ -abs(vec2<i32>(global0.x, u_input.a)), -reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(global0.x, -6075i), vec2<i32>(global0.x, u_input.a)))), _wgslsmith_div_vec2_i32(select(vec2<i32>(-44359i, global0.x), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-1i, 20198i)) >> (reverseBits(vec2<u32>(var_0, 618u)) % vec2<u32>(32u)), true), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(-1i, global0.x) >> (vec2<u32>(var_0, var_0) % vec2<u32>(32u))), vec2<i32>(global0.x, _wgslsmith_sub_i32(global0.x, u_input.a)))));
    var var_1 = ~0u;
    var var_2 = countOneBits(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, select(12586i, 50674i, true)), u_input.a), _wgslsmith_sub_i32(~(~(-1i)), u_input.a)));
    let var_3 = ~1u;
    var var_4 = ~(~(~var_0));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, var_3 & 49078u, var_3, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_3, var_0, var_0) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 16545u, var_3), vec3<u32>(39469u, var_0, 31811u)) % vec3<u32>(32u)), ~vec3<u32>(22448u, var_3, 34538u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-101f, _wgslsmith_f_op_f32(select(552f, 1054f, false)))))), -vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 50004i, -2147483647i), vec3<i32>(-1i, 1i, u_input.a)), _wgslsmith_mult_i32(1i, 18354i)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, global0.x), abs(93987i), firstTrailingBit(-4718i)), global0.x, _wgslsmith_add_i32(i32(-1i) * -1i, 1i)), _wgslsmith_f_op_f32(-140f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(211f)) - _wgslsmith_f_op_f32(select(488f, _wgslsmith_f_op_f32(f32(-1f) * -685f), true)))));
}

