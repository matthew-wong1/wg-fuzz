struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 30>;

var<private> global1: vec3<i32> = vec3<i32>(1i, 1i, 11804i);

var<private> global2: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(57124u, 5757u, 16942u, 75306u), vec4<u32>(1u, 32964u, 34363u, 4294967295u), vec4<u32>(31261u, 1u, 0u, 24632u), vec4<u32>(0u, 50532u, 0u, 71328u), vec4<u32>(5888u, 0u, 10605u, 45186u), vec4<u32>(1u, 36443u, 18107u, 86605u), vec4<u32>(61363u, 50619u, 40497u, 4294967295u), vec4<u32>(52071u, 72289u, 40694u, 50918u));

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 7465u, 4294967295u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_5) -> vec3<u32> {
    global3 = _wgslsmith_div_vec3_u32(~(~vec3<u32>(abs(global3.x), _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(0u, 8u)], vec4<u32>(global3.x, 0u, global3.x, global3.x)), ~global3.x)), _wgslsmith_div_vec3_u32(arg_2.a.a.a, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a, 1u, min(global3.x, 23017u)), select(abs(arg_2.c), ~arg_2.c, vec3<bool>(true, true, true)))));
    global2 = array<vec4<u32>, 8>();
    global0 = array<Struct_5, 30>();
    global1 = _wgslsmith_mod_vec3_i32(arg_1.a.zyz, vec3<i32>(max(-30032i, arg_1.a.x), global1.x, -global1.x));
    var var_0 = 28185i;
    return reverseBits(vec3<u32>(4294967295u, countOneBits(94131u), firstLeadingBit(arg_2.a.a.d)));
}

fn func_2(arg_0: bool) -> vec3<u32> {
    let var_0 = -2003f;
    let var_1 = true;
    global3 = _wgslsmith_add_vec3_u32(~(~(~abs(vec3<u32>(global3.x, 4294967295u, global3.x)))), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global3.x, global3.x, 27710u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, global3.x, 4294967295u), vec3<u32>(global3.x, global3.x, global3.x)), ~vec3<u32>(4294967295u, global3.x, global3.x)), abs(vec3<u32>(global3.x, 60128u, 4294967295u)), ~(vec3<u32>(global3.x, 4294967295u, global3.x) << (vec3<u32>(64918u, 66399u, global3.x) % vec3<u32>(32u)))));
    global3 = ~(~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(54740u, 0u, global3.x), vec3<u32>(10400u, 1u, global3.x)) | ~vec3<u32>(global3.x, 4294967295u, global3.x), func_3(Struct_4(40036u), Struct_3(u_input.a), global0[_wgslsmith_index_u32(global3.x, 30u)]), ~_wgslsmith_div_vec3_u32(vec3<u32>(77617u, global3.x, 43660u), vec3<u32>(4294967295u, global3.x, global3.x))));
    global3 = ~(~min(select(vec3<u32>(1u, global3.x, global3.x), vec3<u32>(85668u, global3.x, 55819u), vec3<bool>(var_1, true, true)) ^ (vec3<u32>(global3.x, global3.x, 8363u) & vec3<u32>(6106u, global3.x, global3.x)), (vec3<u32>(global3.x, 58741u, 63812u) | vec3<u32>(4294967295u, 0u, 1u)) << (~vec3<u32>(global3.x, 47765u, global3.x) % vec3<u32>(32u))));
    return ~(~(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global3.x, global3.x), vec3<u32>(global3.x, 697u, 77429u), vec3<u32>(global3.x, 19692u, global3.x))) >> (vec3<u32>(1u, ~74718u, global3.x) % vec3<u32>(32u))));
}

fn func_1() -> Struct_2 {
    global3 = reverseBits(abs(min(max(~vec3<u32>(1u, global3.x, 76955u), vec3<u32>(global3.x, global3.x, 0u) | vec3<u32>(1u, global3.x, 58180u)), func_2(false))));
    global0 = array<Struct_5, 30>();
    global2 = array<vec4<u32>, 8>();
    global1 = u_input.a.wwx << (_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(max(vec3<u32>(global3.x, 44199u, 13697u), firstLeadingBit(vec3<u32>(30446u, global3.x, global3.x))), vec3<u32>(53833u, 1u, 1u)), func_2(any(vec3<bool>(false, false, false)))) % vec3<u32>(32u));
    let var_0 = Struct_2(Struct_1(~vec3<u32>(func_3(Struct_4(0u), Struct_3(u_input.a), Struct_5(Struct_2(Struct_1(vec3<u32>(global3.x, 1u, 27158u), vec2<u32>(global3.x, 0u), global2[_wgslsmith_index_u32(0u, 8u)], 0u, u_input.a.x)), global3.xy, vec3<u32>(global3.x, global3.x, 9315u))).x, 48934u | global3.x, select(global3.x, global3.x, false)), reverseBits(firstLeadingBit(~vec2<u32>(global3.x, global3.x))), global2[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(global3.x)), 8u)], select(_wgslsmith_mult_u32(global3.x, 8408u) ^ ~global3.x, 18349u, true), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.a.ywy, -u_input.a.zzy), 11409i)));
    return Struct_2(var_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: u32) -> Struct_1 {
    global0 = array<Struct_5, 30>();
    let var_0 = _wgslsmith_dot_vec3_i32(u_input.a.xzw, -abs(vec3<i32>(0i, arg_1.a.e, 1i) ^ vec3<i32>(2147483647i, 21545i, arg_0.a.e))) < func_1().a.e;
    return Struct_1(vec3<u32>(_wgslsmith_mult_u32(arg_3, arg_0.a.d | 1u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(2169u, arg_0.a.a.x)), _wgslsmith_add_vec2_u32(global3.yz, vec2<u32>(arg_0.a.a.x, 4294967295u))), ~min(vec2<u32>(31278u, arg_1.a.d), global3.xz)), ~(~8672u) >> (global3.x % 32u)), vec2<u32>(105957u, arg_3), ~(_wgslsmith_sub_vec4_u32(arg_0.a.c, ~vec4<u32>(1u, arg_1.a.a.x, arg_1.a.b.x, 0u)) | arg_0.a.c), 0u, countOneBits(-7774i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(func_1(), Struct_2(func_1().a), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(400f, 1207f, -1146f, 1440f))))), select(global3.x & 13176u, 1u, 2147483647i != global1.x) | _wgslsmith_mult_u32(global3.x, 1u)));
    global1 = select(_wgslsmith_mod_vec3_i32((vec3<i32>(var_0.a.e, 20287i, global1.x) >> (vec3<u32>(global3.x, 4294967295u, 76565u) % vec3<u32>(32u))) << (~var_0.a.c.xyx % vec3<u32>(32u)), firstTrailingBit(-abs(vec3<i32>(-39147i, global1.x, -2147483647i)))), u_input.a.yyz, !(all(vec2<bool>(true, false)) || true) & all(vec2<bool>(any(vec4<bool>(true, false, true, true)), true)));
    global2 = array<vec4<u32>, 8>();
    global0 = array<Struct_5, 30>();
    global3 = var_0.a.a;
    let var_1 = Struct_3(u_input.a << (select(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(global3.x, 8u)] & ~vec4<u32>(var_0.a.d, 0u, 140344u, var_0.a.d), select(true, true, true)) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1439f)))) - -1112f), -1000f)));
    var var_3 = _wgslsmith_f_op_f32(exp2(1f));
    let x = u_input.a;
    s_output = StorageBuffer(global3.x);
}

