struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: bool,
    d: u32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(-12405i, 14993i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(43842i, i32(-2147483648)), vec2<i32>(-22836i, -15714i), vec2<i32>(1i, i32(-2147483648)));

var<private> global2: array<i32, 1>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> u32 {
    global0 = select(!vec2<bool>(global0.x, global0.x), !vec2<bool>(select(select(global0.x, true, true), all(vec3<bool>(global0.x, global0.x, false)), true), false), select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), !vec2<bool>(true, global0.x), !vec2<bool>(false, global0.x)), vec2<bool>(true, false || global0.x), vec2<bool>(global0.x, select(false, false, global0.x))), vec2<bool>(any(!vec4<bool>(global0.x, global0.x, false, false)), true), false && !global0.x));
    var var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 14422u, 4294967295u, 0u) | vec4<u32>(1182u, u_input.b.x, 1u, 19279u), ~vec4<u32>(1u, 38637u, u_input.a, 112505u)), ~(~countOneBits(vec4<i32>(-1i, -20638i, 15101i, -2662i))), -min(-vec2<i32>(global2[_wgslsmith_index_u32(u_input.c, 1u)], global2[_wgslsmith_index_u32(u_input.c, 1u)]), ~global1[_wgslsmith_index_u32(u_input.a, 5u)]), vec3<i32>(_wgslsmith_dot_vec2_i32(select(global1[_wgslsmith_index_u32(u_input.a, 5u)], global1[_wgslsmith_index_u32(15427u, 5u)], true), reverseBits(global1[_wgslsmith_index_u32(u_input.b.x, 5u)])), -1i, global2[_wgslsmith_index_u32(~4294967295u, 1u)]), reverseBits(u_input.b.zz)), ~reverseBits(5410u));
    var var_1 = Struct_4(Struct_3(_wgslsmith_div_vec4_u32(max(vec4<u32>(var_0.b, u_input.c, var_0.a.e.x, var_0.b) ^ vec4<u32>(1u, u_input.a, 0u, 4294967295u), vec4<u32>(49802u, u_input.c, var_0.b, 4294967295u)), ~vec4<u32>(var_0.a.a, 52206u, var_0.a.a, u_input.b.x)), var_0.a.e, all(select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, false), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), vec2<bool>(true, global0.x)))), _wgslsmith_dot_vec2_u32(~var_0.a.e, _wgslsmith_add_vec2_u32(~vec2<u32>(42377u, 74876u), ~var_0.a.e)), ~var_0.a.b ^ vec4<i32>(1i, -26588i, var_0.a.d.x, 0i)), _wgslsmith_f_op_f32(trunc(-174f)), Struct_3(abs(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(var_0.a.a, 38227u, u_input.b.x, 1u)), select(vec4<u32>(2308u, u_input.b.x, var_0.b, 0u), vec4<u32>(40715u, u_input.c, 47219u, var_0.a.e.x), true))), ~firstTrailingBit(var_0.a.e & vec2<u32>(4294967295u, u_input.b.x)), any(vec2<bool>(true, true)), var_0.a.a, vec4<i32>(6595i, firstLeadingBit(reverseBits(global2[_wgslsmith_index_u32(0u, 1u)])), -25123i, var_0.a.d.x)), Struct_3(abs(vec4<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(var_0.a.e, vec2<u32>(u_input.c, 36845u)), 0u, ~var_0.b)), _wgslsmith_sub_vec2_u32(~var_0.a.e, (vec2<u32>(var_0.b, u_input.c) | u_input.b.xy) >> (~vec2<u32>(var_0.a.e.x, 0u) % vec2<u32>(32u))), !global0.x, 1415u, _wgslsmith_mod_vec4_i32(var_0.a.b, ~vec4<i32>(50943i, 2147483647i, 1i, global2[_wgslsmith_index_u32(11909u, 1u)]))));
    global1 = array<vec2<i32>, 5>();
    var var_2 = all(select(vec3<bool>(false, all(select(vec3<bool>(var_1.a.c, false, false), vec3<bool>(true, global0.x, true), false)), all(select(vec4<bool>(false, false, var_1.d.c, var_1.c.c), vec4<bool>(false, var_1.a.c, var_1.a.c, false), vec4<bool>(false, global0.x, false, global0.x)))), select(select(!vec3<bool>(var_1.d.c, global0.x, true), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, var_1.a.c, false), var_1.a.c), vec3<bool>(global0.x, global0.x, true)), !select(vec3<bool>(true, false, var_1.d.c), vec3<bool>(var_1.a.c, global0.x, var_1.a.c), true), var_1.d.c), select(global0.x, u_input.c < countOneBits(8765u), false)));
    return abs(firstTrailingBit(_wgslsmith_add_u32(max(var_1.c.d, 4294967295u), abs(var_1.d.d))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: u32, arg_3: i32) -> f32 {
    global0 = !vec2<bool>(global0.x, arg_1 != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -1000f)));
    let var_0 = Struct_1(min(u_input.b.x, 16740u), _wgslsmith_mult_vec4_i32(vec4<i32>(~global2[_wgslsmith_index_u32(func_3(), 1u)], _wgslsmith_clamp_i32(0i, global2[_wgslsmith_index_u32(u_input.a, 1u)] << (arg_2 % 32u), 12595i), _wgslsmith_dot_vec2_i32(firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 5u)]), min(vec2<i32>(23815i, 1i), global1[_wgslsmith_index_u32(24328u, 5u)])), countOneBits(global2[_wgslsmith_index_u32(4294967295u, 1u)])), vec4<i32>(37961i, -1i, reverseBits(2147483647i), 2147483647i)), _wgslsmith_add_vec2_i32(abs(vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a, 1u)]) & _wgslsmith_mult_vec2_i32(global1[_wgslsmith_index_u32(39903u, 5u)], vec2<i32>(-16545i, 1i))), vec2<i32>(1i, i32(-1i) * -arg_3)), _wgslsmith_add_vec3_i32(-vec3<i32>(firstLeadingBit(27040i), -1i, 9726i), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], -2147483647i, 0i, global2[_wgslsmith_index_u32(9148u, 1u)]), vec4<i32>(6509i, -8028i, -37487i, 0i) >> (vec4<u32>(arg_2, 28920u, u_input.b.x, 17972u) % vec4<u32>(32u))), global2[_wgslsmith_index_u32(select(min(u_input.a, 0u), max(arg_2, u_input.b.x), false), 1u)])), countOneBits(firstLeadingBit(~(u_input.b.zx >> (u_input.b.xx % vec2<u32>(32u))))));
    let var_1 = vec3<u32>(~(~0u) & _wgslsmith_mult_u32(firstTrailingBit(arg_2), 66596u), 0u, 9119u);
    var var_2 = ~(~(~(~u_input.b.x)));
    var var_3 = Struct_1(4294967295u, -reverseBits(var_0.b | -vec4<i32>(1i, 6690i, 2147483647i, var_0.d.x)), ~reverseBits(vec2<i32>(~1i, _wgslsmith_dot_vec3_i32(var_0.d, vec3<i32>(global2[_wgslsmith_index_u32(var_0.a, 1u)], -48195i, global2[_wgslsmith_index_u32(u_input.c, 1u)])))), _wgslsmith_add_vec3_i32(var_0.d, ~_wgslsmith_sub_vec3_i32(var_0.b.xxy, _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 0i, -24067i), vec3<i32>(global2[_wgslsmith_index_u32(0u, 1u)], var_0.c.x, var_0.c.x)))), reverseBits(vec2<u32>(_wgslsmith_add_u32(var_0.a, arg_2), u_input.b.x)));
    return _wgslsmith_f_op_f32(-439f * _wgslsmith_f_op_f32(abs(arg_1)));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, global0.x), 2788f, 38993u, global2[_wgslsmith_index_u32(103344u, 1u)])), _wgslsmith_f_op_f32(-853f - -1279f)))) + 1676f) >= _wgslsmith_f_op_f32(f32(-1f) * -1350f);
    let var_1 = select(reverseBits(vec4<u32>(~35757u, u_input.b.x, func_3(), 10296u)), vec4<u32>(u_input.b.x, firstTrailingBit(4294967295u), 4294967295u, countOneBits(~(~u_input.b.x))), false);
    return StorageBuffer(u_input.b.xz, -1407f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(func_2(vec3<bool>(global0.x, global0.x, global0.x), -1034f, 65490u, -11219i))), _wgslsmith_f_op_f32(-647f * -1315f)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-246f, -292f)))))), ~u_input.b.zx, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a, u_input.b.x, var_1.x) ^ var_1.yyz), vec3<u32>(max(4294967295u, var_1.x), _wgslsmith_add_u32(u_input.c, var_1.x), 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(vec3<i32>(~(-(~31368i)), -24886i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(0i, global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)])), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, 55129i, 24085i), vec3<i32>(0i, global2[_wgslsmith_index_u32(4294967295u, 1u)], 0i))), abs(~vec3<i32>(-2147483647i, 11112i, global2[_wgslsmith_index_u32(23777u, 1u)])))), -(~vec3<i32>(77093i, global2[_wgslsmith_index_u32(u_input.c, 1u)], 5045i) & vec3<i32>(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 1u)], -2147483647i, -2147483647i)));
    global0 = select(!vec2<bool>(true, var_0.x < var_0.x), vec2<bool>(!(!global0.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 32766i, 0i), vec4<bool>(global0.x, true, true, global0.x)), vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 1u)], 0i, global2[_wgslsmith_index_u32(u_input.a, 1u)], -58156i)) >= ~var_0.x), !(!(!global0.x) | (global0.x & all(vec2<bool>(true, global0.x)))));
    global1 = array<vec2<i32>, 5>();
    global1 = array<vec2<i32>, 5>();
    global0 = vec2<bool>(!(global0.x & true), global0.x);
    var var_1 = -1061f;
    global2 = array<i32, 1>();
    var var_2 = 49660u;
    let x = u_input.a;
    s_output = func_1();
}

