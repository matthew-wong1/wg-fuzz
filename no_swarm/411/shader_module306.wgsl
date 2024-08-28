struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_4,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 1u, 4294967295u, 32080u);

var<private> global1: array<f32, 18>;

var<private> global2: Struct_5;

var<private> global3: Struct_4;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool) -> bool {
    return true;
}

fn func_2(arg_0: bool) -> Struct_5 {
    global2 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global2.a))))) * global2.a), ~(~(firstLeadingBit(vec2<u32>(20569u, 1u)) ^ vec2<u32>(0u, global2.c.d.x))), global3.a, Struct_4(global2.d.a), select(select(vec2<bool>(all(vec2<bool>(false, global3.a.c.x)), !arg_0), vec2<bool>(false | global3.a.c.x, true), func_3(Struct_2(Struct_1(vec2<i32>(global2.c.a.x, -2147483647i), global3.a.b, vec2<bool>(global3.a.c.x, arg_0), global2.b), global3.a, global2.d.a.a, u_input.a, vec4<u32>(3636u, global3.a.b.x, global0.x, global0.x)), vec4<i32>(0i, 2147483647i, u_input.b.x, 2147483647i), true) != true), vec2<bool>(any(vec4<bool>(global3.a.c.x, false, arg_0, true)), true), !select(vec2<bool>(true, false), vec2<bool>(global3.a.c.x, true), !global3.a.c)));
    let var_0 = _wgslsmith_sub_vec4_i32(~_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 34263i, -29562i, global2.c.a.x), vec4<i32>(89740i, 14771i, -2147483647i, 45169i)), vec4<i32>(global2.c.a.x, global3.a.a.x, 1i, -2147483647i) >> (vec4<u32>(global0.x, global3.a.d.x, 0u, 51119u) % vec4<u32>(32u)), min(vec4<i32>(52818i, global2.d.a.a.x, 2147483647i, global2.d.a.a.x), vec4<i32>(2147483647i, -1i, global3.a.a.x, global2.c.a.x))) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, global0.x, global3.a.d.x, global3.a.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 44628u, global0.x, global0.x), vec4<u32>(4294967295u, 0u, global0.x, 6591u))), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, global2.b.x, global3.a.d.x, u_input.c)), ~vec4<u32>(42787u, 0u, global2.c.b.x, u_input.c))) % vec4<u32>(32u)), vec4<i32>(1i, u_input.b.x, ~(-firstLeadingBit(1i)), ~35992i));
    global1 = array<f32, 18>();
    let var_1 = !select(!vec2<bool>(true, global2.e.x), global2.d.a.c, any(vec3<bool>(false, !global3.a.c.x, true)));
    var var_2 = !all(vec2<bool>(var_1.x, true));
    return Struct_5(vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.a.x))))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c) << (select(global2.d.a.b.x, global0.x, arg_0) % 32u), 18u)])), ~(abs(global3.a.b) ^ ~global3.a.d) & firstLeadingBit(~vec2<u32>(55558u, u_input.c) ^ global0.ww), global2.d.a, Struct_4(Struct_1(global2.c.a, max(abs(vec2<u32>(108482u, 4294967295u)), global3.a.d), select(var_1, !vec2<bool>(false, global3.a.c.x), select(vec2<bool>(false, arg_0), vec2<bool>(true, false), true)), global0.zx)), !(!vec2<bool>(any(vec4<bool>(global3.a.c.x, global2.d.a.c.x, true, false)), false)));
}

fn func_1() -> Struct_1 {
    global2 = func_2(true);
    let var_0 = 1987i ^ _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-15671i, global2.c.a.x), global2.c.a), -global3.a.a)), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(global3.a.a.x, global3.a.a.x, global2.d.a.a.x), u_input.d), global3.a.a.x));
    let var_1 = global2.d;
    global0 = vec4<u32>(_wgslsmith_mod_u32(u_input.c, _wgslsmith_add_u32(~select(72914u, 1u, false), func_2(global2.e.x).b.x)), ~min(_wgslsmith_dot_vec2_u32(reverseBits(global0.zy), vec2<u32>(var_1.a.d.x, 0u)), ~reverseBits(76050u)), max(68146u, global2.b.x), ~(~global0.x));
    let var_2 = true;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_5(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(global2.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -937f), global2.a.x, _wgslsmith_f_op_f32(round(global2.a.x))), !vec3<bool>(global3.a.c.x, false, true))))), abs(select(max(global2.c.b, ~vec2<u32>(1u, global3.a.d.x)), ~global3.a.d, !(global3.a.c.x || global2.c.c.x))), func_1(), Struct_4(Struct_1(vec2<i32>(firstTrailingBit(1i), firstTrailingBit(global3.a.a.x)), ~abs(vec2<u32>(55452u, global0.x)), func_2(true).e, vec2<u32>(0u, func_2(global3.a.c.x).d.a.b.x))), vec2<bool>(true, true));
    global0 = vec4<u32>(~select(9717u, u_input.c, select(global3.a.c.x, any(vec3<bool>(global2.d.a.c.x, global3.a.c.x, true)), true)), (~(global3.a.d.x | u_input.c) & global2.b.x) >> (4294967295u % 32u), firstTrailingBit(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(60041u, 0u, global3.a.b.x, 26428u), vec4<u32>(u_input.c, u_input.c, 25191u, u_input.c)))), _wgslsmith_clamp_u32(~6909u, ~global3.a.b.x, firstTrailingBit(~18038u)));
    let var_0 = !(!select(select(select(vec4<bool>(true, true, false, global2.e.x), vec4<bool>(global3.a.c.x, true, true, global2.c.c.x), vec4<bool>(false, false, false, false)), select(vec4<bool>(global3.a.c.x, global3.a.c.x, false, global3.a.c.x), vec4<bool>(global2.d.a.c.x, true, global3.a.c.x, global2.e.x), vec4<bool>(false, global2.e.x, true, global3.a.c.x)), vec4<bool>(true, true, global2.e.x, global2.d.a.c.x)), vec4<bool>(true, global2.c.c.x, true, true), !func_2(global3.a.c.x).c.c.x));
    var var_1 = Struct_1(firstLeadingBit(select(vec2<i32>(global2.d.a.a.x << (global3.a.d.x % 32u), 0i), select(~global3.a.a, ~vec2<i32>(26808i, u_input.a), vec2<bool>(global3.a.c.x, global2.e.x)), any(vec2<bool>(false, global3.a.c.x)))), _wgslsmith_div_vec2_u32(vec2<u32>(~global0.x, 1u), abs(global3.a.b) << (~vec2<u32>(u_input.c, 5960u) % vec2<u32>(32u))), func_1().c, ~global2.b);
    let var_2 = -vec4<i32>(-53820i, _wgslsmith_div_i32(global3.a.a.x, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global2.d.a.a.x, u_input.a, 0i, var_1.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(global3.a.a.x, u_input.b.x, var_1.a.x, global2.d.a.a.x), vec4<i32>(-15201i, 16350i, var_1.a.x, -1i)))), _wgslsmith_mod_i32(8926i, _wgslsmith_mult_i32(abs(var_1.a.x), ~(-1i))), ~11890i);
    var var_3 = global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.b.x, _wgslsmith_add_u32(~(var_3.b.x | 23473u), ~global0.x));
}

