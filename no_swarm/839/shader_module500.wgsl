struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(1u, 20188u, 79456u), vec3<u32>(37396u, 27330u, 0u), vec3<u32>(1u, 1u, 4606u), vec3<u32>(7195u, 0u, 44442u), vec3<u32>(6323u, 4294967295u, 42731u), vec3<u32>(51334u, 1u, 52750u), vec3<u32>(48669u, 60662u, 0u), vec3<u32>(132551u, 21794u, 6365u), vec3<u32>(107618u, 0u, 4294967295u), vec3<u32>(0u, 0u, 1u), vec3<u32>(109935u, 4294967295u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 44097u, 1u), vec3<u32>(4294967295u, 0u, 24588u), vec3<u32>(79139u, 0u, 1u), vec3<u32>(4294967295u, 20985u, 36936u), vec3<u32>(1u, 26202u, 4294967295u), vec3<u32>(8187u, 1u, 56312u), vec3<u32>(4294967295u, 75690u, 4294967295u), vec3<u32>(0u, 0u, 0u), vec3<u32>(23582u, 5294u, 79831u), vec3<u32>(4294967295u, 0u, 1u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> bool {
    var var_0 = (max(global0.d, ~(~global0.d)) >> (_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(global0.b.d.x, global0.c.a.d.x, global0.c.a.d.x)), ~vec3<u32>(global0.c.a.d.x, 4294967295u, global0.c.a.d.x)) % vec3<u32>(32u))) >> (global0.c.a.d % vec3<u32>(32u));
    let var_1 = Struct_3(990f, Struct_1(global0.b.a, true, global0.d.x, global1[_wgslsmith_index_u32(global0.c.a.d.x, 24u)], !(!(var_0.x == u_input.a))), global0.c, ~global0.d);
    let var_2 = var_1;
    var var_3 = Struct_2(var_2.b);
    var_3 = var_1.c;
    return !(any(vec4<bool>(true, var_2.c.a.a.x, true, any(vec2<bool>(false, false)))) && var_3.a.e);
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_4(~(~global0.b.d << (vec3<u32>(32698u, 80875u, 64990u) % vec3<u32>(32u))) >> ((global0.c.a.d & (~global1[_wgslsmith_index_u32(global0.c.a.d.x, 24u)] & _wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(arg_0, 24u)], vec3<u32>(29035u, arg_0, 38882u)))) % vec3<u32>(32u)), global0.b.d.x);
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(296f * -1861f), _wgslsmith_f_op_f32(sign(global0.a)), global0.a)) * vec3<f32>(-2621f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 221f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1093f, global0.a)) + -1574f)))));
    var_0 = Struct_4(vec3<u32>(_wgslsmith_mod_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(21314u, global0.c.a.d.x, 27397u), var_0.a), ~1u), _wgslsmith_mod_u32(~arg_0, ~49188u)), global0.c.a.d.x, 0u), abs(1u));
    var var_3 = global0.d.zx;
    return global0.b.d.x;
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a, global0.a))), Struct_1(global0.b.a, arg_0.x, global0.c.a.c << (global0.b.d.x % 32u), vec3<u32>(func_3(countOneBits(global0.c.a.d.x)), ~(~31523u), global0.c.a.d.x), all(!select(global0.b.a, global0.b.a, global0.c.a.a.x))), global0.c, ~firstTrailingBit(reverseBits(~global0.d)));
    let var_0 = Struct_4(vec3<u32>(~47057u, 0u, (global0.c.a.d.x | _wgslsmith_mod_u32(4294967295u, 18512u)) << (abs(~global0.c.a.d.x) % 32u)), abs(~max(abs(global0.b.d.x), global0.b.d.x)));
    var var_1 = Struct_4(abs(~(~select(vec3<u32>(27232u, 1u, global0.c.a.d.x), global0.c.a.d, arg_0))), min(reverseBits(max(~4294967295u, ~global0.b.d.x)), ~var_0.a.x));
    global1 = array<vec3<u32>, 24>();
    global0 = Struct_3(-1676f, Struct_1(vec2<bool>(arg_0.x, (arg_0.x || global0.c.a.e) & func_1(vec2<f32>(global0.a, global0.a), arg_0.x)), global0.c.a.b, -(~0i), global1[_wgslsmith_index_u32(firstLeadingBit(var_0.a.x), 24u)], true), Struct_2(global0.c.a), select(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 0i, global0.d.x), vec3<i32>(-1i, u_input.a, global0.c.a.c), vec3<i32>(global0.c.a.c, global0.d.x, u_input.a)), global0.d), global0.d, select(select(vec3<bool>(true, arg_0.x, true), vec3<bool>(true, arg_0.x, arg_0.x), global0.c.a.e), !vec3<bool>(arg_0.x, global0.c.a.b, true), global0.a >= global0.a)) ^ min(global0.d, vec3<i32>(-73712i, u_input.a << (var_1.a.x % 32u), _wgslsmith_div_i32(u_input.a, -2147483647i))));
    return global0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b.a;
    global1 = array<vec3<u32>, 24>();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(559f + global0.a), _wgslsmith_f_op_f32(sign(global0.a))) + global0.a)), Struct_1(!vec2<bool>(true, func_1(vec2<f32>(1455f, 1096f), var_0.x)), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1097f, global0.a), vec2<f32>(global0.a, global0.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-262f, global0.a))), global0.b.b), ~(func_2(vec3<bool>(true, global0.b.e, false)) | (i32(-1i) * -1i)), firstTrailingBit(global0.c.a.d), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, global0.a), vec2<f32>(global0.a, global0.a)))), false)), Struct_2(Struct_1(select(!vec2<bool>(var_0.x, false), vec2<bool>(true, true), var_0.x), any(select(global0.b.a, vec2<bool>(true, true), global0.b.a)), -global0.c.a.c, vec3<u32>(global0.b.d.x, ~22142u, ~63043u), true)), vec3<i32>(~(-1901i), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global0.d, vec3<i32>(-1i, 0i, u_input.a)), 31112i), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-45733i, 2147483647i, global0.d.x, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a, 1i, 0i), vec4<i32>(u_input.a, 2147483647i, 47614i, 7831i))))));
    let var_2 = vec2<u32>(~firstLeadingBit(reverseBits(_wgslsmith_add_u32(var_1.c.a.d.x, 42116u))), max(_wgslsmith_dot_vec3_u32(var_1.b.d, vec3<u32>(~25930u, _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(var_1.b.d.x, 24u)], vec3<u32>(var_1.c.a.d.x, global0.b.d.x, var_1.c.a.d.x)), 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global0.b.d.x, global0.c.a.d.x), ~846u, 1u, 73402u), vec4<u32>(17420u, 0u, var_1.c.a.d.x, var_1.c.a.d.x) | select(vec4<u32>(6482u, var_1.c.a.d.x, var_1.b.d.x, 4004u), vec4<u32>(87033u, global0.c.a.d.x, var_1.b.d.x, global0.c.a.d.x), vec4<bool>(false, false, global0.b.b, false)))));
    let var_3 = _wgslsmith_mult_vec2_u32(global0.c.a.d.zy, var_1.c.a.d.xy);
    let var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), Struct_1(var_1.b.a, true, var_1.b.c, ~var_1.c.a.d, var_0.x), global0.c, vec3<i32>(-var_1.b.c, 2147483647i, u_input.a ^ 26865i));
    var var_5 = Struct_3(-162f, global0.b, Struct_2(var_4.b), -vec3<i32>(-15472i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_4.d.xz, vec2<i32>(var_4.c.a.c, global0.d.x)), vec2<i32>(var_1.c.a.c, -36660i)), reverseBits(-19368i >> (var_1.b.d.x % 32u))));
    let var_6 = Struct_3(_wgslsmith_f_op_f32(trunc(1000f)), var_1.c.a, global0.c, abs(-_wgslsmith_div_vec3_i32(~vec3<i32>(-2632i, var_1.c.a.c, var_1.b.c), -var_5.d)));
    var var_7 = ~vec3<u32>(min(min(var_4.b.d.x, var_2.x), ~70222u), var_4.c.a.d.x, _wgslsmith_dot_vec3_u32(~var_6.c.a.d, _wgslsmith_div_vec3_u32(~vec3<u32>(global0.b.d.x, 1u, 4294967295u), select(vec3<u32>(2056u, var_5.c.a.d.x, 1u), var_1.b.d, vec3<bool>(true, true, var_5.b.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.c, ~(~(-func_2(vec3<bool>(var_4.c.a.b, false, true)))));
}

