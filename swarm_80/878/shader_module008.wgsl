struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-2533i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, -61744i, 63104i, 6453i));

var<private> global1: array<f32, 18> = array<f32, 18>(-1722f, -797f, -848f, -1000f, -297f, 307f, 1107f, 1176f, -1000f, -694f, -255f, -1748f, 1042f, -1000f, 400f, 1027f, 200f, -1208f);

var<private> global2: vec4<u32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<u32>) -> vec4<u32> {
    let var_0 = vec2<u32>(~(~28044u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, arg_0, 4294967295u, 0u) << (~vec4<u32>(u_input.a, global2.x, 6216u, 1u) % vec4<u32>(32u)), (vec4<u32>(0u, 1u, arg_2.x, 4294967295u) & vec4<u32>(0u, 1u, arg_2.x, 15730u)) | abs(vec4<u32>(arg_2.x, arg_0, 0u, global2.x))), _wgslsmith_sub_vec4_u32(~vec4<u32>(60408u, arg_2.x, 62937u, u_input.a), firstLeadingBit(~vec4<u32>(4294967295u, 1u, 4294967295u, arg_2.x)))));
    let var_1 = vec2<i32>(-1i) * -min(vec2<i32>(global0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, 23471i), vec2<i32>(global0.a.x, global0.a.x))), ~(~global0.a.zx));
    global1 = array<f32, 18>();
    var var_2 = Struct_1(_wgslsmith_div_vec3_i32(countOneBits(firstTrailingBit(vec3<i32>(global0.b.x, var_1.x, -51103i))), vec3<i32>(global0.b.x ^ global0.a.x, _wgslsmith_dot_vec4_i32(global0.b, global0.b), _wgslsmith_clamp_i32(2147483647i, global0.a.x, global0.a.x)) & -vec3<i32>(22939i, global0.a.x, global0.b.x)), abs(firstLeadingBit(global0.b)));
    var var_3 = false | arg_1.x;
    return ~select(_wgslsmith_mod_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(0u, 48208u, global2.x, 1u))), countOneBits(vec4<u32>(arg_0, 28200u, arg_2.x, arg_0))), vec4<u32>(global2.x, arg_0, ~(~3250u), _wgslsmith_sub_u32(0u, ~var_0.x)), arg_1.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(select(vec4<u32>(u_input.a, 58251u, u_input.a, 40433u), select(vec4<u32>(4294967295u, global2.x, global2.x, u_input.a), vec4<u32>(global2.x, 16622u, 18542u, global2.x), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)))), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) & func_3(33334u, vec2<bool>(true, false), vec2<u32>(56578u, u_input.a)), ~vec4<u32>(1u, 36621u, 18307u, global2.x) >> (vec4<u32>(4294967295u, global2.x, 23665u, u_input.a) % vec4<u32>(32u)))), ~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(96845u, global2.x, global2.x, global2.x), vec4<u32>(24483u, 65244u, 1u, 13159u)), 45875u, ~15934u, ~4294967295u)));
    global1 = array<f32, 18>();
    global1 = array<f32, 18>();
    let var_2 = Struct_3(global2.wwz >> (vec3<u32>(~_wgslsmith_mult_u32(u_input.a, 4294967295u), _wgslsmith_clamp_u32(countOneBits(global2.x), abs(global2.x), _wgslsmith_clamp_u32(54634u, global2.x, 42987u)), ~global2.x) % vec3<u32>(32u)));
    return var_0;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(Struct_1(_wgslsmith_mult_vec3_i32(~firstTrailingBit(global0.a), vec3<i32>(global0.b.x, min(global0.b.x, global0.a.x), 9620i)), firstLeadingBit(-global0.b) | vec4<i32>(global0.a.x, 1i, _wgslsmith_mod_i32(-14422i, global0.b.x), global0.b.x & global0.b.x)));
    var var_1 = Struct_4(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, all(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), true, !all(vec4<bool>(true, true, false, true))), vec4<bool>(!any(vec2<bool>(true, false)), any(vec2<bool>(false, false)), select(any(vec3<bool>(true, false, true)), true, true), !all(vec4<bool>(false, false, false, true)))), _wgslsmith_mult_u32(~(4294967295u << (_wgslsmith_add_u32(u_input.a, 1u) % 32u)), _wgslsmith_mult_u32(u_input.a & u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(4294967295u, global2.x, 0u, 4294967295u))) >> (~(~u_input.a) % 32u)), _wgslsmith_div_i32(global0.a.x, _wgslsmith_sub_i32(countOneBits(func_2(var_0).b.x), _wgslsmith_div_i32(var_0.b.x & 2147483647i, _wgslsmith_dot_vec4_i32(global0.b, var_0.b)))), Struct_2(func_2(Struct_1(var_0.a, firstLeadingBit(vec4<i32>(1i, -48305i, 58279i, var_0.b.x)))), vec2<bool>(true, true), min(1i, 22904i), 1u ^ abs(_wgslsmith_div_u32(u_input.a, 4294967295u)), !select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), global1[_wgslsmith_index_u32(global2.x, 18u)] < 235f)));
    var var_2 = _wgslsmith_mod_vec2_i32(var_0.a.zx, var_1.d.a.a.xy ^ firstLeadingBit(vec2<i32>(~2147483647i, _wgslsmith_mult_i32(-30653i, 22271i))));
    global0 = func_2(Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(~(-1i), var_2.x, -var_1.d.c), vec3<i32>(~19523i, -var_2.x, -2147483647i)), var_0.b));
    global0 = var_0;
    return func_2(Struct_1(func_2(Struct_1(vec3<i32>(-2503i, global0.b.x, -5210i), vec4<i32>(-6448i, global0.a.x, var_1.d.c, -1i))).b.zxw | vec3<i32>(-var_0.a.x, firstLeadingBit(global0.b.x), -23478i), _wgslsmith_clamp_vec4_i32(global0.b, ~vec4<i32>(0i, var_1.d.a.b.x, var_1.c, var_2.x), var_1.d.a.b)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> f32 {
    let var_0 = global0.b.x >> (u_input.a % 32u);
    var var_1 = -34898i;
    var var_2 = firstTrailingBit(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(arg_3.a.x, arg_3.a.x, 59184u, u_input.a) | vec4<u32>(4294967295u, 4294967295u, 29951u, 1u)), ~(~vec4<u32>(u_input.a, u_input.a, arg_3.a.x, 101462u))));
    var var_3 = Struct_2(Struct_1(-func_1().a, vec4<i32>(var_0 >> (~global2.x % 32u), firstTrailingBit(arg_0.b.x) & _wgslsmith_sub_i32(var_0, arg_0.b.x), -18508i, 0i)), vec2<bool>(true, true), countOneBits(var_0), arg_3.a.x, vec2<bool>(all(vec3<bool>(true, true, true)), true));
    return _wgslsmith_f_op_f32(-arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(21501i, -12675i);
    var var_1 = all(!vec2<bool>(_wgslsmith_f_op_f32(select(-592f, -459f, true)) == _wgslsmith_f_op_f32(-1129f + global1[_wgslsmith_index_u32(1u, 18u)]), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_4(func_1(), Struct_3((vec3<u32>(1u, global2.x, 1u) << (vec3<u32>(9250u, global2.x, global2.x) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, global2.x, global2.x), global2.xwz) % vec3<u32>(32u))), 1169f, Struct_3(~global2.zxz))), vec3<i32>(2147483647i, _wgslsmith_mult_i32(12691i, _wgslsmith_clamp_i32(var_0.x, var_0.x >> (u_input.a % 32u), ~global0.b.x)), ~(~global0.a.x)), global1[_wgslsmith_index_u32(~u_input.a, 18u)], ~(~(u_input.a >> (1u % 32u))), firstLeadingBit(firstLeadingBit(u_input.a)));
}

