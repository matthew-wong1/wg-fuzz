struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<u32>(0u, 4294967295u, 22380u, 28752u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 22523u)), Struct_1(vec4<u32>(0u, 10876u, 13658u, 62589u)), Struct_1(vec4<u32>(1u, 7732u, 4294967295u, 31222u)), Struct_1(vec4<u32>(86907u, 76302u, 48062u, 1u)), Struct_1(vec4<u32>(113903u, 5175u, 53004u, 0u)), Struct_1(vec4<u32>(42694u, 7340u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(15460u, 0u, 0u, 1u)), Struct_1(vec4<u32>(4294967295u, 66657u, 4294967295u, 49581u)), Struct_1(vec4<u32>(74120u, 45874u, 43431u, 4294967295u)), Struct_1(vec4<u32>(0u, 1u, 90584u, 0u)), Struct_1(vec4<u32>(4294967295u, 77052u, 51493u, 7123u)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 1u)), Struct_1(vec4<u32>(73437u, 11855u, 10230u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 36101u, 1u, 0u)), Struct_1(vec4<u32>(32186u, 3364u, 11241u, 50524u)), Struct_1(vec4<u32>(1u, 12701u, 0u, 0u)), Struct_1(vec4<u32>(1u, 1u, 52911u, 46111u)), Struct_1(vec4<u32>(1u, 58434u, 49762u, 4294967295u)), Struct_1(vec4<u32>(8098u, 25367u, 23183u, 0u)), Struct_1(vec4<u32>(39908u, 72533u, 0u, 4294967295u)), Struct_1(vec4<u32>(1u, 88540u, 10031u, 53084u)), Struct_1(vec4<u32>(4294967295u, 47243u, 1u, 49561u)), Struct_1(vec4<u32>(59410u, 0u, 1u, 1u)), Struct_1(vec4<u32>(4294967295u, 62264u, 23837u, 4294967295u)), Struct_1(vec4<u32>(0u, 60296u, 0u, 4294967295u)), Struct_1(vec4<u32>(1u, 4294967295u, 8260u, 1u)), Struct_1(vec4<u32>(0u, 126205u, 32968u, 12668u)));

var<private> global1: array<i32, 28>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> u32 {
    return abs(27335u);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_3, arg_3: f32) -> f32 {
    global0 = array<Struct_1, 28>();
    let var_0 = arg_2;
    let var_1 = Struct_1(~(~(~vec4<u32>(6936u, arg_1.b.a.x, 0u, 4294967295u)) ^ abs(var_0.a.d.a)));
    global1 = array<i32, 28>();
    global1 = array<i32, 28>();
    return _wgslsmith_f_op_f32(-arg_2.d);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: f32) -> vec4<u32> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, min(1u, func_1(false, -select(vec3<i32>(15770i, global1[_wgslsmith_index_u32(0u, 28u)], arg_1), vec3<i32>(global1[_wgslsmith_index_u32(1u, 28u)], -66803i, arg_0), false)))), 28u)];
    global1 = array<i32, 28>();
    let var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.a.x & 29540i, arg_1), arg_0), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, -19517i, arg_0) ^ vec3<i32>(19518i, -2147483647i, arg_0), vec3<i32>(global1[_wgslsmith_index_u32(0u, 28u)], u_input.a.x, global1[_wgslsmith_index_u32(96485u, 28u)])), countOneBits(select(vec3<i32>(u_input.b, -33180i, 32215i), vec3<i32>(arg_0, -39720i, -25219i), vec3<bool>(false, true, true)))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b, 0i, -2147483647i)), countOneBits(vec3<i32>(u_input.a.x, -1i, arg_1))), -(~vec3<i32>(arg_0, -1717i, u_input.a.x))), ~select(~(-2147483647i), arg_1, true)), _wgslsmith_sub_vec3_i32(~vec3<i32>(min(1i, 0i), _wgslsmith_div_i32(46559i, u_input.a.x), arg_1), ~(reverseBits(vec3<i32>(-60282i, -1i, arg_0)) & vec3<i32>(-11620i, arg_1, 1i))));
    let var_2 = 4294967295u;
    let var_3 = Struct_2(Struct_1(firstTrailingBit(abs(var_0.a))), global0[_wgslsmith_index_u32(~1u, 28u)], -24821i, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_0.a.x, var_0.a.x), 28u)]);
    return _wgslsmith_add_vec4_u32(~min(var_3.a.a, _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.a.x, 1u, 37883u), vec4<u32>(1u, 4294967295u, 1u, 1u))), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(func_1(true, vec3<i32>(reverseBits(36018i), global1[_wgslsmith_index_u32(~46374u, 28u)], global1[_wgslsmith_index_u32(53557u, 28u)] << (4294967295u % 32u)) >> (firstLeadingBit(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u))), 28u)], Struct_1(func_3(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(~30844u, 28u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<bool>(true, false, true, true), Struct_2(Struct_1(vec4<u32>(0u, 23053u, 21066u, 0u)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), u_input.a.x, global0[_wgslsmith_index_u32(11871u, 28u)]), Struct_3(Struct_2(Struct_1(vec4<u32>(34659u, 1799u, 4294967295u, 1u)), Struct_1(vec4<u32>(0u, 49429u, 4294967295u, 1u)), global1[_wgslsmith_index_u32(110453u, 28u)], global0[_wgslsmith_index_u32(36652u, 28u)]), 1u, false, -900f), 359f)) * _wgslsmith_f_op_f32(round(-1003f))))), u_input.b, Struct_1(_wgslsmith_sub_vec4_u32(select(vec4<u32>(12606u, 1u, 54166u, 0u), ~vec4<u32>(47064u, 4294967295u, 4294967295u, 4294967295u), vec4<bool>(true, true, true, true)), ~(~vec4<u32>(4294967295u, 4294967295u, 50536u, 4294967295u)))));
    let var_1 = Struct_2(Struct_1(reverseBits(~var_0.a.a)), Struct_1(_wgslsmith_mult_vec4_u32(~var_0.a.a, var_0.a.a)), -1i, global0[_wgslsmith_index_u32(var_0.d.a.x, 28u)]);
    global0 = array<Struct_1, 28>();
    var var_2 = var_1.d.a.yzw;
    let var_3 = Struct_2(Struct_1(var_1.a.a), var_0.d, ~var_0.c, Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, var_1.a.a.x, var_0.a.a.x), abs(var_1.b.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(-189f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, false), var_0, Struct_3(var_3, var_2.x, false, -1666f), 321f))))))), vec3<i32>(var_1.c, 2147483647i, _wgslsmith_mult_i32(-1i, -2147483647i)) ^ (reverseBits(-vec3<i32>(var_1.c, 1i, 24694i)) << (((vec3<u32>(var_0.a.a.x, 60611u, var_3.b.a.x) << (var_1.b.a.xxz % vec3<u32>(32u))) << (~vec3<u32>(var_0.d.a.x, var_1.b.a.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))), 4294967295u, abs(func_1(true, select(min(vec3<i32>(global1[_wgslsmith_index_u32(var_2.x, 28u)], global1[_wgslsmith_index_u32(var_2.x, 28u)], 0i), vec3<i32>(var_0.c, -2147483647i, 2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_3.c, u_input.b, 27048i), vec3<i32>(-1i, var_0.c, -27652i)), true))), ~(~_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(var_0.b.a.x, 1u, var_3.b.a.x, 49047u)), ~vec4<u32>(var_3.d.a.x, var_0.b.a.x, 0u, var_2.x))));
}

