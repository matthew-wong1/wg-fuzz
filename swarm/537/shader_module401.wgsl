struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: vec4<i32>;

var<private> global2: bool = false;

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<i32>(35269i, 2147483647i, 0i), 24566u, vec4<i32>(24802i, -1i, -27082i, -3570i)), Struct_1(vec3<i32>(38140i, 10685i, 0i), 0u, vec4<i32>(61551i, 27247i, -18368i, 41467i)), Struct_1(vec3<i32>(-23252i, 54875i, 1i), 81428u, vec4<i32>(48976i, -1i, 1i, 67983i)), Struct_1(vec3<i32>(162i, 10384i, 2147483647i), 4435u, vec4<i32>(0i, 20074i, 2147483647i, -4952i)), Struct_1(vec3<i32>(0i, 22594i, 2147483647i), 56884u, vec4<i32>(34717i, 2147483647i, 66325i, 24912i)), Struct_1(vec3<i32>(-7976i, -54334i, -34304i), 0u, vec4<i32>(42545i, 1i, -50401i, -12912i)), Struct_1(vec3<i32>(-11939i, -42585i, 1i), 4294967295u, vec4<i32>(-26128i, 75165i, 6932i, 37638i)), Struct_1(vec3<i32>(-76140i, 2147483647i, -37993i), 22870u, vec4<i32>(-55756i, i32(-2147483648), i32(-2147483648), 0i)), Struct_1(vec3<i32>(2147483647i, -12522i, i32(-2147483648)), 31465u, vec4<i32>(-26071i, -5591i, -109894i, -54856i)), Struct_1(vec3<i32>(-1i, 2147483647i, -52818i), 12604u, vec4<i32>(-1i, -4204i, 2147483647i, -38190i)), Struct_1(vec3<i32>(33453i, 24792i, -1i), 4294967295u, vec4<i32>(-38220i, 1i, 2147483647i, -1i)), Struct_1(vec3<i32>(44535i, 2147483647i, 2147483647i), 65180u, vec4<i32>(2147483647i, 1i, 59779i, i32(-2147483648))), Struct_1(vec3<i32>(1i, 1i, -40901i), 4294967295u, vec4<i32>(i32(-2147483648), -4252i, 0i, -10881i)), Struct_1(vec3<i32>(1i, 0i, -1i), 1u, vec4<i32>(-1i, 2147483647i, 2147483647i, i32(-2147483648))), Struct_1(vec3<i32>(1i, 3343i, -1i), 50626u, vec4<i32>(-1390i, i32(-2147483648), 1i, -27894i)), Struct_1(vec3<i32>(2147483647i, 1i, 4554i), 0u, vec4<i32>(-24074i, -27380i, 36031i, -92398i)), Struct_1(vec3<i32>(1i, -9757i, 2147483647i), 4294967295u, vec4<i32>(9335i, 11467i, 0i, -41570i)), Struct_1(vec3<i32>(13356i, 28092i, 2147483647i), 23122u, vec4<i32>(0i, -25062i, i32(-2147483648), 34153i)), Struct_1(vec3<i32>(i32(-2147483648), 19983i, 10499i), 0u, vec4<i32>(0i, 21348i, 14198i, 15567i)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 0i), 39304u, vec4<i32>(2147483647i, 0i, -1i, 20299i)), Struct_1(vec3<i32>(2147483647i, 20121i, i32(-2147483648)), 0u, vec4<i32>(22396i, 1i, 2147483647i, 1i)), Struct_1(vec3<i32>(5655i, 59727i, 2147483647i), 1u, vec4<i32>(55839i, -1i, -26133i, -51554i)), Struct_1(vec3<i32>(-36685i, 2147483647i, -1i), 36937u, vec4<i32>(1i, 0i, 37952i, 6379i)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -45130i), 32379u, vec4<i32>(-57330i, -6408i, 19035i, 27738i)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 0i), 98639u, vec4<i32>(1i, -32313i, i32(-2147483648), 0i)), Struct_1(vec3<i32>(11608i, 0i, -21128i), 60075u, vec4<i32>(-1i, 2147483647i, -16623i, -70255i)), Struct_1(vec3<i32>(2147483647i, -14560i, -1230i), 23968u, vec4<i32>(79060i, 1i, 2147483647i, 0i)), Struct_1(vec3<i32>(-22167i, i32(-2147483648), 2022i), 1u, vec4<i32>(1095i, 2147483647i, -11161i, 1i)), Struct_1(vec3<i32>(4219i, 1i, 1i), 49840u, vec4<i32>(0i, i32(-2147483648), 2147483647i, -27906i)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>) -> bool {
    global1 = ~(-(~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -2147483647i, global1.x, global1.x), vec4<i32>(global1.x, -2147483647i, -3402i, u_input.c), vec4<i32>(u_input.c, -3865i, -7783i, u_input.c)))));
    let var_0 = Struct_1(vec3<i32>(reverseBits(0i), _wgslsmith_clamp_i32((1i ^ u_input.c) << (_wgslsmith_mod_u32(77230u, 22759u) % 32u), global1.x, u_input.c & abs(global1.x)), 0i | (~global1.x & _wgslsmith_dot_vec4_i32(vec4<i32>(53919i, 1521i, -17751i, global1.x), vec4<i32>(-35075i, -24343i, -81594i, global1.x)))), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(8745u), 106134u, _wgslsmith_add_u32(~u_input.b.x, u_input.b.x)), vec3<u32>(countOneBits(_wgslsmith_sub_u32(4294967295u, u_input.a)), _wgslsmith_mod_u32(0u, 70019u), firstTrailingBit(61781u))), vec4<i32>(~15537i, 1i, -firstLeadingBit(u_input.c), u_input.c));
    global0 = !vec2<bool>(select(true, all(!vec4<bool>(global0.x, false, false, false)), !(true | global0.x)), global0.x);
    global2 = global0.x;
    let var_1 = _wgslsmith_div_u32(reverseBits(4294967295u), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.zz), ~4294967295u));
    return true;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> bool {
    let var_0 = !select(!select(vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, global0.x), true), vec3<bool>(global0.x, true, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 1u, 4294967295u), vec4<u32>(71630u, u_input.a, 1u, 31735u)) >= ~1u), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(270f, arg_0, 1110f, -111f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.x, arg_0, arg_0, 1000f))))));
    let var_1 = 21933i;
    var var_2 = vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(~reverseBits(vec4<i32>(var_1, global1.x, -2147483647i, -1i)), vec4<i32>(0i, global1.x, -2147483647i, countOneBits(-1i)));
    return true;
}

fn func_1() -> i32 {
    var var_0 = !select(vec3<bool>(func_2(_wgslsmith_div_f32(673f, -1088f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-799f, 1000f, 310f))), true, u_input.a < u_input.a), vec3<bool>(global0.x, global0.x, false), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1068f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(809f, 634f, 389f)))));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, abs(_wgslsmith_dot_vec3_i32(global1.wwx, global1.yzw))), ~global1.yy), vec2<i32>(abs(abs(u_input.c)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -133i, global1.x, global1.x) | vec4<i32>(-26766i, 2147483647i, -25328i, u_input.c), vec4<i32>(38646i, global1.x, global1.x, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(abs(_wgslsmith_add_u32(min(~u_input.a, ~562u), u_input.b.x)), ~(~u_input.a), u_input.b.x, 55921u);
    global1 = vec4<i32>(6219i, abs(_wgslsmith_add_i32(_wgslsmith_sub_i32(global1.x, u_input.c), -59065i)), 1i, global1.x & 18415i) | vec4<i32>(0i, u_input.c, 2147483647i, u_input.c);
    global1 = vec4<i32>(28529i, -29345i, global1.x, -func_1());
    global2 = global0.x | (20002i < _wgslsmith_sub_i32(global1.x, select(_wgslsmith_mod_i32(3522i, global1.x), -30460i >> (u_input.b.x % 32u), false)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-845f, _wgslsmith_f_op_f32(-2186f - 1327f), -210f, 892f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1869f, -1193f, 500f, -969f), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -546f, 1345f, -1000f), vec4<f32>(1478f, 646f, -1232f, -2947f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-280f, -2103f, -627f, -1361f), vec4<f32>(-750f, 755f, 314f, 824f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(263f, -862f, 1000f, -662f))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-1077f)), -1443f, -1154f, 1481f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-415f, -804f, -250f, -1001f))))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-253f, var_1.x)) * var_1.x), -1136f, !all(vec2<bool>(global0.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-540f + 846f)))))));
    var var_3 = ((_wgslsmith_sub_vec4_u32(vec4<u32>(45446u, 0u, 4294967295u, var_0.x) & var_0, var_0) << ((var_0 ^ _wgslsmith_mult_vec4_u32(var_0, vec4<u32>(37683u, u_input.b.x, 33554u, 0u))) % vec4<u32>(32u))) & vec4<u32>(_wgslsmith_add_u32(u_input.a, 21694u), _wgslsmith_mult_u32(reverseBits(u_input.b.x), _wgslsmith_mult_u32(4294967295u, var_0.x)), 4294967295u, ~(~5295u))) ^ ~(~(~vec4<u32>(var_0.x, u_input.a, 1u, 46827u)));
    let x = u_input.a;
    s_output = StorageBuffer(0i, global1.x ^ u_input.c, vec3<u32>(~min(~3237u, ~u_input.a), var_0.x, 71398u));
}

