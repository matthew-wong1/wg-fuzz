struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: u32;

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, 52443i, 2147483647i);

var<private> global3: Struct_2;

var<private> global4: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(1610u, vec2<u32>(0u, 50419u)), Struct_1(1632u, vec2<u32>(4294967295u, 1u)), Struct_1(0u, vec2<u32>(45635u, 44771u)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<bool>) -> vec3<i32> {
    let var_0 = !(33408u != global3.c.x);
    let var_1 = 36544u;
    return arg_1;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>) -> vec4<u32> {
    global2 = max((_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global2.x, -8826i, global2.x), vec3<i32>(global2.x, -41665i, global2.x)), -vec3<i32>(1i, global2.x, 40964i)) << (((u_input.c.zxx & vec3<u32>(51325u, 33971u, arg_0.a)) << (~u_input.c.yyy % vec3<u32>(32u))) % vec3<u32>(32u))) | func_3(Struct_1(arg_0.a, global3.c.wz << (global3.c.zy % vec2<u32>(32u))), vec3<i32>(firstTrailingBit(u_input.b), u_input.b, _wgslsmith_div_i32(global2.x, 0i)), vec2<bool>(false, arg_1.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(2147483647i, u_input.b), -29741i, firstTrailingBit(-1i)), vec3<i32>(-1i) * -vec3<i32>(2147483647i, global2.x, global2.x)) >> (vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 61013u, 0u), vec4<u32>(arg_0.a, 1u, 10750u, 7636u)), 0u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(global3.c, global3.c), global3.c & u_input.c), reverseBits(firstLeadingBit(global3.c.x))) % vec3<u32>(32u)));
    var var_0 = Struct_1(_wgslsmith_sub_u32(max(global3.c.x, select(global3.c.x >> (arg_0.a % 32u), 41465u | global3.c.x, arg_1.x)), global3.c.x), firstTrailingBit(_wgslsmith_div_vec2_u32(global3.c.yw ^ _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 85553u), vec2<u32>(13610u, 18411u)), vec2<u32>(global3.c.x, u_input.a))));
    global3 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global3.a))), _wgslsmith_f_op_vec4_f32(global3.b - global3.b), ~vec4<u32>(~u_input.c.x, 73886u, _wgslsmith_sub_u32(global3.c.x, global3.c.x), 21366u) >> (firstTrailingBit(~(~vec4<u32>(var_0.b.x, global3.c.x, 52811u, var_0.b.x))) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -578f))) * _wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(exp2(global3.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.x * -693f))));
    let var_1 = Struct_2(global3.b.xz, _wgslsmith_f_op_vec4_f32(select(global3.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global3.b))), select(vec4<bool>(false, arg_1.x, true | arg_1.x, !arg_1.x), vec4<bool>(true, any(vec3<bool>(true, false, false)), true, any(vec3<bool>(arg_1.x, arg_1.x, true))), !select(vec4<bool>(true, false, arg_1.x, true), vec4<bool>(arg_1.x, true, arg_1.x, false), arg_1.x)))), select(countOneBits(vec4<u32>(countOneBits(var_0.b.x), max(1u, 20502u), reverseBits(var_0.a), reverseBits(10718u))), ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 16619u, 23557u, 7179u), firstLeadingBit(global3.c)), select(select(select(vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, false, false), arg_1.x), !vec4<bool>(false, true, arg_1.x, arg_1.x), true), vec4<bool>(false, false, 0u != arg_0.a, true), select(!vec4<bool>(arg_1.x, true, true, arg_1.x), !vec4<bool>(arg_1.x, false, false, arg_1.x), all(vec2<bool>(arg_1.x, arg_1.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2615f))))));
    global3 = var_1;
    return var_1.c;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    global1 = countOneBits(firstTrailingBit(_wgslsmith_clamp_u32(reverseBits(0u), global3.c.x, arg_2.x) ^ _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 57447u, 98949u, arg_2.x)), ~vec4<u32>(global3.c.x, 4294967295u, 3359u, 16839u))));
    var var_0 = u_input.c ^ _wgslsmith_clamp_vec4_u32(u_input.c, _wgslsmith_add_vec4_u32(~u_input.c << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, 1u, 12556u), global3.c) % vec4<u32>(32u)), ~vec4<u32>(u_input.c.x, arg_2.x, 24426u, u_input.a)), vec4<u32>(countOneBits(arg_2.x), ~(u_input.c.x & global3.c.x), 4294967295u, 5419u));
    var var_1 = Struct_3(u_input.a);
    global1 = 31275u;
    global3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(trunc(global3.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1107f)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3.d.x, global3.b.x))), 112f, _wgslsmith_div_f32(-852f, -758f)), _wgslsmith_mult_vec4_u32(~select(_wgslsmith_mult_vec4_u32(global3.c, u_input.c), vec4<u32>(var_1.a, var_1.a, 22095u, u_input.c.x) << (global3.c % vec4<u32>(32u)), true), select(vec4<u32>(_wgslsmith_add_u32(4294967295u, 0u), firstTrailingBit(4294967295u), _wgslsmith_mod_u32(1u, 99849u), 8751u), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, 1u, var_0.x, 1u), vec4<u32>(4294967295u, 1u, arg_2.x, 4294967295u), global3.c), func_2(Struct_3(69207u), vec2<bool>(false, false)), ~vec4<u32>(1u, 1u, 4294967295u, 1u)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), true))), _wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(850f, _wgslsmith_f_op_f32(sign(-2217f)))));
    return Struct_2(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(global3.b)))), global3.b)) * _wgslsmith_f_op_vec4_f32(trunc(global3.b))), _wgslsmith_div_vec4_u32(vec4<u32>(~func_2(Struct_3(var_1.a), vec2<bool>(false, false)).x, func_2(Struct_3(var_1.a), vec2<bool>(true, false)).x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 6671u, 39808u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, 14654u, 8579u), vec4<u32>(var_1.a, u_input.c.x, 63454u, global3.c.x))), countOneBits(22134u) & (50316u & global3.c.x)), ~(~(~vec4<u32>(0u, arg_2.x, 4294967295u, var_1.a)))), vec2<f32>(_wgslsmith_f_op_f32(round(-1116f)), 502f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 8533u;
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(abs(global3.d)), -global2.x, u_input.c.xw);
    var var_1 = vec3<i32>(reverseBits(~min(~(-15955i), u_input.b)), -countOneBits(_wgslsmith_add_i32(_wgslsmith_mult_i32(-10473i, u_input.b), -global2.x)), -2147483647i);
    let var_2 = ~(-(countOneBits(~vec3<i32>(-2147483647i, 9146i, 47749i)) | ~countOneBits(vec3<i32>(global2.x, 27768i, -2147483647i))));
    global1 = abs(1u);
    var var_3 = vec4<i32>(_wgslsmith_div_i32(countOneBits(_wgslsmith_mod_i32(var_2.x, -2147483647i)), _wgslsmith_mod_i32(i32(-1i) * -27109i, var_1.x)), 1509i, _wgslsmith_mult_i32(-u_input.b, ~(~_wgslsmith_add_i32(-8794i, -8098i))), var_1.x);
    var_3 = abs(~select(vec4<i32>(23593i, -5334i, var_1.x, -1i) & vec4<i32>(1i, u_input.b, global2.x, 41570i), vec4<i32>(-1i, 2147483647i, -1i, var_1.x) | vec4<i32>(u_input.b, var_2.x, -2304i, -21422i), vec4<bool>(true, true, true, true)) << (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(22297u, 2090u, 4294967295u, global3.c.x)) >> (~global3.c % vec4<u32>(32u)), abs(~vec4<u32>(37307u, u_input.c.x, 54657u, 0u))) % vec4<u32>(32u)));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(691f + _wgslsmith_f_op_f32(-var_0.a.x)), -800f);
    let var_5 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4) - vec2<f32>(_wgslsmith_f_op_f32(761f - global3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -769f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_4.x + var_4.x), -156f))), vec2<f32>(1061f, _wgslsmith_f_op_f32(f32(-1f) * -932f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x >> (global3.c.x % 32u), 4294967295u);
}

