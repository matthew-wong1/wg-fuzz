struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: bool = true;

var<private> global2: bool;

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(-27076i, 30561u), Struct_2(-1i, 67657u), Struct_2(-1i, 51194u), Struct_2(14434i, 1u), Struct_2(-46373i, 12228u), Struct_2(2147483647i, 16978u), Struct_2(2147483647i, 35889u), Struct_2(60105i, 8717u), Struct_2(i32(-2147483648), 0u), Struct_2(-43202i, 4294967295u), Struct_2(3038i, 0u), Struct_2(0i, 0u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: bool) -> bool {
    global0 = array<i32, 3>();
    var var_0 = vec2<u32>(64303u, ~u_input.c);
    var_0 = vec2<u32>(~u_input.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(~u_input.c, var_0.x), vec2<u32>(firstTrailingBit(u_input.c), 1u) >> (vec2<u32>(countOneBits(u_input.b), var_0.x) % vec2<u32>(32u))));
    global0 = array<i32, 3>();
    let var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.x, 7857u, 1u)) ^ ~(~vec3<u32>(32245u, 1u, var_0.x)), _wgslsmith_add_vec3_u32(vec3<u32>(11199u | u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.c), select(u_input.c, 1u, false)), ~(vec3<u32>(4294967295u, u_input.c, u_input.c) >> (vec3<u32>(17787u, 47987u, var_0.x) % vec3<u32>(32u))))), 12u)];
    return !arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> u32 {
    let var_0 = arg_0;
    global1 = all(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.a.x, 3u)] <= global0[_wgslsmith_index_u32(u_input.b, 3u)], arg_2 & true, arg_2)));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_sub_i32(~(-2971i), ~(~firstTrailingBit(global0[_wgslsmith_index_u32(5235u, 3u)]))) < reverseBits(~(-1i));
    let var_3 = _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(u_input.a, -vec4<i32>(global0[_wgslsmith_index_u32(0u, 3u)], -2147483647i, u_input.a.x, 42805i))), u_input.a);
    return ~(1u | _wgslsmith_sub_u32(u_input.c, select(arg_0.a.x, 57483u, any(arg_1.xy))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> bool {
    var var_0 = !select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), ~u_input.c > func_3(Struct_1(vec3<u32>(36463u, arg_0, 1u), vec3<f32>(920f, 1452f, 542f)), vec3<bool>(false, false, true), false)), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, false, true)), true), !select(vec2<bool>(false, true), vec2<bool>(false, false), false)), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, false), true)));
    global2 = select(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a.x, -1i) & (i32(-1i) * -42197i), 27232i), _wgslsmith_add_i32(abs(global0[_wgslsmith_index_u32(43771u, 3u)]), reverseBits(-554i)), true) >= reverseBits(-37592i);
    global2 = !var_0.x;
    var var_1 = false;
    let var_2 = !select(vec2<bool>(var_0.x, (var_0.x && true) != true), !vec2<bool>(var_0.x, -1069f >= arg_2), var_0.x);
    return any(vec2<bool>(var_2.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(all(!vec2<bool>(func_1(false), func_1(true))), all(!vec3<bool>(false, func_2(3537u, Struct_2(-2147483647i, 20406u), -2195f), true)), all(vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true, _wgslsmith_sub_u32(u_input.b, 23805u) <= _wgslsmith_div_u32(u_input.b, u_input.c))));
    var var_0 = _wgslsmith_add_i32(u_input.a.x, ~select(global0[_wgslsmith_index_u32(10882u, 3u)], firstTrailingBit(20567i), true) | ~(~global0[_wgslsmith_index_u32(~0u, 3u)]));
    let var_1 = Struct_1(firstTrailingBit(~vec3<u32>(u_input.c, _wgslsmith_mult_u32(53053u, 2430u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), vec4<u32>(u_input.c, u_input.c, u_input.c, 0u)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-813f + -1007f), _wgslsmith_f_op_f32(-145f - 448f), true)), _wgslsmith_f_op_f32(574f + _wgslsmith_f_op_f32(-760f + 336f)), _wgslsmith_f_op_f32(f32(-1f) * -304f)) - vec3<f32>(-284f, _wgslsmith_f_op_f32(f32(-1f) * -1634f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -885f)))));
    var var_2 = var_1.a.x;
    var var_3 = !vec4<bool>(true, false, true, !(!any(vec3<bool>(true, false, false))));
    global3 = array<Struct_2, 12>();
    let var_4 = global3[_wgslsmith_index_u32(~(~countOneBits(0u)), 12u)];
    var var_5 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(select(var_1.a.x, ~u_input.b, func_2(var_1.a.x, global3[_wgslsmith_index_u32(0u, 12u)], var_1.b.x)) ^ (~1496u << (0u % 32u)), ~4294967295u), 3u)], var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(abs(23022u), ~_wgslsmith_clamp_u32(var_1.a.x, u_input.b, var_4.b), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b, 4294967295u), _wgslsmith_clamp_u32(15496u, var_4.b, 33170u)), min(5216u, ~22802u)), ~(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_5.b, 4294967295u, var_5.b, var_5.b), vec4<u32>(var_5.b, 34667u, var_1.a.x, u_input.c), vec4<u32>(1572u, 60234u, u_input.b, 20824u)) ^ vec4<u32>(46901u, 63211u, var_1.a.x, u_input.b))), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_4.b, u_input.c, 0u, 0u), countOneBits(vec4<u32>(6777u, 66058u, 4294967295u, var_1.a.x))) << (countOneBits(_wgslsmith_div_u32(5445u, 66487u << (u_input.b % 32u))) % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-975f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-231f - var_1.b.x) * 814f))));
}

