struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: i32 = 5789i;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<bool>(true, true, false, true), -452f), Struct_1(vec4<bool>(true, false, false, false), 1137f), Struct_1(vec4<bool>(true, true, false, true), 557f), Struct_1(vec4<bool>(false, false, false, true), -381f), Struct_1(vec4<bool>(false, false, true, false), 774f), Struct_1(vec4<bool>(false, true, true, false), 236f), Struct_1(vec4<bool>(false, false, true, true), 1000f), Struct_1(vec4<bool>(true, true, false, false), 534f), Struct_1(vec4<bool>(false, false, true, false), -192f), Struct_1(vec4<bool>(true, false, false, true), 326f), Struct_1(vec4<bool>(true, true, true, false), -731f), Struct_1(vec4<bool>(true, false, false, false), -909f), Struct_1(vec4<bool>(false, true, true, true), -1000f), Struct_1(vec4<bool>(false, true, true, false), 1014f), Struct_1(vec4<bool>(false, false, false, true), 336f), Struct_1(vec4<bool>(true, true, false, false), 1478f), Struct_1(vec4<bool>(true, true, false, false), -1046f), Struct_1(vec4<bool>(false, true, true, true), 304f));

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<bool>(true, false, true, true), -229f), Struct_1(vec4<bool>(false, false, false, true), -987f), Struct_1(vec4<bool>(true, true, false, false), -104f), Struct_1(vec4<bool>(false, false, false, true), -280f), Struct_1(vec4<bool>(false, true, true, false), 147f), Struct_1(vec4<bool>(false, false, true, false), 910f), Struct_1(vec4<bool>(false, true, false, false), 1703f), Struct_1(vec4<bool>(false, false, true, true), 667f), Struct_1(vec4<bool>(true, false, false, true), -1526f), Struct_1(vec4<bool>(false, true, false, true), 601f), Struct_1(vec4<bool>(false, true, true, true), 1029f), Struct_1(vec4<bool>(true, true, true, false), -1083f), Struct_1(vec4<bool>(false, false, false, false), 965f), Struct_1(vec4<bool>(false, false, false, false), 726f), Struct_1(vec4<bool>(true, false, true, true), 681f), Struct_1(vec4<bool>(false, false, false, false), -336f), Struct_1(vec4<bool>(false, false, true, true), 1000f), Struct_1(vec4<bool>(true, false, false, true), 1839f), Struct_1(vec4<bool>(false, true, true, false), -221f), Struct_1(vec4<bool>(false, true, true, false), 1019f));

var<private> global4: array<i32, 32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<i32> {
    let var_0 = global3[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(reverseBits(52020u), 4294967295u))), 20u)];
    return _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(291i, 0i, -1i, global0.x) & reverseBits(vec4<i32>(1i, -1i, global0.x, 27960i)), vec4<i32>(_wgslsmith_mult_i32(-1i, global0.x), 1i, _wgslsmith_add_i32(global0.x, global4[_wgslsmith_index_u32(23236u, 32u)]), global4[_wgslsmith_index_u32(1u >> (1u % 32u), 32u)])) ^ vec4<i32>(_wgslsmith_mod_i32(global4[_wgslsmith_index_u32(1u, 32u)], ~u_input.a.x), -26846i, global0.x, ~u_input.b.x), _wgslsmith_add_vec4_i32(-abs(~vec4<i32>(-2147483647i, 0i, -43961i, u_input.a.x)), _wgslsmith_sub_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(733i, global0.x, global0.x, global0.x), vec4<i32>(55997i, -6459i, 1i, global0.x))), -countOneBits(vec4<i32>(global4[_wgslsmith_index_u32(29429u, 32u)], global0.x, global4[_wgslsmith_index_u32(39852u, 32u)], global4[_wgslsmith_index_u32(45766u, 32u)])))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec4<bool> {
    let var_0 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-8131i ^ global0.x, global0.x, global0.x, global4[_wgslsmith_index_u32(abs(4294967295u), 32u)]), -func_3()), min(vec4<i32>(global0.x, global0.x, 1i, 1i) | vec4<i32>(global0.x, 0i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.b.x, global4[_wgslsmith_index_u32(1u, 32u)], -898i, global4[_wgslsmith_index_u32(4294967295u, 32u)])) & _wgslsmith_add_vec4_i32(max(vec4<i32>(global0.x, u_input.a.x, global4[_wgslsmith_index_u32(1u, 32u)], 1i), vec4<i32>(0i, 1i, -1i, global4[_wgslsmith_index_u32(0u, 32u)])), select(vec4<i32>(1i, 1i, u_input.b.x, 1i), vec4<i32>(1i, -1i, global0.x, global4[_wgslsmith_index_u32(58734u, 32u)]), false)));
    var var_1 = firstTrailingBit(max(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, 9658u, 49081u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u)), ~_wgslsmith_add_u32(0u, 1u)), vec2<u32>(firstLeadingBit(select(5617u, 0u, arg_0.a.x)), 539u)));
    global4 = array<i32, 32>();
    global3 = array<Struct_1, 20>();
    var var_2 = _wgslsmith_mult_i32(firstLeadingBit(countOneBits(max(1i, abs(u_input.a.x)))), 30541i);
    return select(!vec4<bool>(select(any(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), false, arg_0.a.x), arg_0.a.x, 4294967295u == min(var_1.x, 22010u), any(vec4<bool>(true, false, true, arg_0.a.x)) != any(arg_0.a.yy)), select(vec4<bool>(true, !arg_0.a.x, true, arg_0.a.x), vec4<bool>(!arg_0.a.x, !(!arg_0.a.x), -2007f <= arg_1, arg_0.a.x), all(select(vec4<bool>(true, arg_0.a.x, true, arg_0.a.x), vec4<bool>(false, arg_0.a.x, false, true), arg_0.a)) && arg_0.a.x), arg_0.a);
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> Struct_1 {
    global3 = array<Struct_1, 20>();
    global4 = array<i32, 32>();
    global0 = -min(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a ^ vec2<i32>(global0.x, -2147483647i), vec2<i32>(25320i, 2147483647i)), select(firstLeadingBit(vec2<i32>(u_input.b.x, global0.x)), ~u_input.b.yz, any(vec3<bool>(false, arg_1, arg_1)))), select(vec2<i32>(16428i, global0.x), vec2<i32>(global4[_wgslsmith_index_u32(53012u, 32u)], u_input.b.x), all(arg_0)) & ((vec2<i32>(global4[_wgslsmith_index_u32(0u, 32u)], -42381i) << (vec2<u32>(38207u, 95u) % vec2<u32>(32u))) | _wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(-2147483647i, 9114i), u_input.a)));
    global4 = array<i32, 32>();
    global0 = u_input.a;
    return Struct_1(select(select(select(select(vec4<bool>(true, false, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_1, arg_1), vec4<bool>(arg_1, arg_0.x, arg_0.x, false)), vec4<bool>(arg_1, arg_0.x, false, true), select(vec4<bool>(arg_1, true, true, true), vec4<bool>(true, arg_1, false, true), vec4<bool>(arg_0.x, true, arg_1, true))), select(select(vec4<bool>(arg_0.x, arg_1, arg_1, arg_0.x), vec4<bool>(true, false, false, arg_1), vec4<bool>(true, arg_1, arg_1, false)), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), select(vec4<bool>(false, true, arg_0.x, true), vec4<bool>(arg_0.x, false, arg_0.x, arg_1), vec4<bool>(arg_1, false, true, arg_1))), vec4<bool>(true, !arg_0.x, arg_1, true)), func_2(global2[_wgslsmith_index_u32(1u, 18u)], 1f), any(!arg_0.xy)), _wgslsmith_f_op_f32(min(-1497f, 575f)));
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = global2[_wgslsmith_index_u32(1u, 18u)];
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-572f + _wgslsmith_f_op_f32(-1525f + var_0.b)) - arg_0.b) + _wgslsmith_f_op_f32(f32(-1f) * -1949f)), _wgslsmith_f_op_f32(-arg_0.b), 554f);
    global0 = min(-_wgslsmith_add_vec2_i32(-vec2<i32>(5205i, global4[_wgslsmith_index_u32(11864u, 32u)]), firstLeadingBit(-u_input.a)), vec2<i32>(-((i32(-1i) * -38907i) | _wgslsmith_sub_i32(16417i, global4[_wgslsmith_index_u32(23300u, 32u)])), ~global4[_wgslsmith_index_u32(0u, 32u)]));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))), _wgslsmith_f_op_f32(-var_1.x)), 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(2119f, var_0.b, arg_0.a.x)))), -1034f, _wgslsmith_f_op_f32(var_1.x + -532f)), var_1.zwy, false)));
    var var_3 = _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), firstTrailingBit(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(16824u, 6531u, 0u, 122725u)))));
    return min(countOneBits(firstLeadingBit(~(~vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 32u)], global0.x, global0.x, global4[_wgslsmith_index_u32(var_3.x, 32u)])))), (~vec4<i32>(-4465i, global4[_wgslsmith_index_u32(var_3.x, 32u)], -13500i, u_input.a.x) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 29341u), var_3.zzz), ~4360u, 1u, ~var_3.x) % vec4<u32>(32u))) ^ ~vec4<i32>(_wgslsmith_sub_i32(29267i, -1i), _wgslsmith_div_i32(-1i, global4[_wgslsmith_index_u32(1u, 32u)]), firstTrailingBit(global0.x), ~(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -41428i, 2147483647i, global4[_wgslsmith_index_u32(1u, 32u)]), vec4<i32>(-1i, global4[_wgslsmith_index_u32(0u, 32u)], global4[_wgslsmith_index_u32(4294967295u, 32u)], -1i), vec4<i32>(-14600i, global0.x, 43904i, global0.x)), func_4(func_1(vec3<bool>(true, false, false), true))) ^ -(-23080i & global4[_wgslsmith_index_u32(~82375u, 32u)]), global0.x, -global4[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(93751u, 108850u, 60312u)), 32u)]);
    global2 = array<Struct_1, 18>();
    let var_1 = Struct_1(vec4<bool>(!any(vec4<bool>(false, false, true, false)), func_2(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(floor(-1000f))), -1528f).x, false, true), _wgslsmith_f_op_f32(515f - _wgslsmith_f_op_f32(exp2(func_1(vec3<bool>(true, false, false), func_2(global2[_wgslsmith_index_u32(4294967295u, 18u)], -1678f).x).b))));
    var var_2 = 30458u;
    var_2 = 30204u;
    let x = u_input.a;
    s_output = StorageBuffer(~4683u ^ (4119u ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(27209u, 1u, 105070u), vec3<u32>(1u, 1u, 81047u)), ~1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1385f, var_1.b, var_1.b, var_1.b)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(306f + var_1.b) * _wgslsmith_f_op_f32(step(390f, 1216f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1205f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b * var_1.b), var_1.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b * -252f), _wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(abs(var_1.b)), true)), true)), -var_0.x);
}

