struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(18533i, -28497i, i32(-2147483648), i32(-2147483648)), vec4<i32>(i32(-2147483648), 0i, 4187i, 0i));

var<private> global1: array<bool, 14> = array<bool, 14>(false, true, true, false, true, false, false, true, false, false, false, true, false, false);

var<private> global2: array<Struct_1, 15>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> f32 {
    let var_0 = u_input.a;
    var var_1 = arg_0;
    var var_2 = Struct_2(arg_1, ~vec3<u32>(var_0, u_input.a, ~(~4294967295u)), var_1.c);
    let var_3 = ~firstLeadingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.b.yx, _wgslsmith_mult_vec2_u32(var_1.b.yz, vec2<u32>(arg_0.b.x, arg_0.b.x)), firstTrailingBit(arg_0.b.zx)), ~var_1.b.zz));
    let var_4 = ~reverseBits(countOneBits(-2147483647i));
    return -892f;
}

fn func_2() -> Struct_2 {
    global0 = array<vec4<i32>, 2>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(global1[_wgslsmith_index_u32(68236u, 14u)], vec3<u32>(4294967295u, 4294967295u, 1u), global2[_wgslsmith_index_u32(1u, 15u)]), true)), 1f, _wgslsmith_f_op_f32(max(750f, 1307f)), -194f))), vec4<f32>(-687f, -225f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_2(true, vec3<u32>(u_input.a, 12310u, 36699u), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 14u)])), false))))), -1000f));
    let var_1 = Struct_1(all(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], false), vec2<bool>(false, false), global1[_wgslsmith_index_u32(countOneBits(14852u), 14u)])));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, 1111f, var_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1199f, var_0.x, var_0.x) + vec3<f32>(var_0.x, var_0.x, 365f)) - _wgslsmith_f_op_vec3_f32(sign(var_0.zyz)))))) - var_0.xxy);
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 - var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -2240f, var_0.x, -1867f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -552f) * -310f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-848f)) * _wgslsmith_f_op_f32(-var_2.x))), 239f, 1828f, -514f)));
    return Struct_2(true, vec3<u32>(_wgslsmith_add_u32(4294967295u, u_input.a), u_input.a, ~(~u_input.a)), var_1);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32) -> u32 {
    var var_0 = Struct_1(!all(vec2<bool>(true, global1[_wgslsmith_index_u32(~0u, 14u)])));
    var_0 = func_2().c;
    let var_1 = Struct_2(all(!vec4<bool>(true, false, false, arg_1.a)) | any(select(vec2<bool>(false, true), !vec2<bool>(arg_1.a, true), true)), max(min(_wgslsmith_sub_vec3_u32(firstTrailingBit(arg_1.b), select(arg_1.b, vec3<u32>(24360u, 1u, u_input.a), vec3<bool>(false, false, global1[_wgslsmith_index_u32(arg_1.b.x, 14u)]))), arg_1.b), vec3<u32>(4294967295u, 1u, 1u)), func_2().c);
    global2 = array<Struct_1, 15>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-495f)));
    return 36041u;
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_mod_u32(arg_1.b.x, func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1635f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(416f, -514f) - vec2<f32>(-541f, 240f))))), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 2270f)) + 388f))));
    let var_1 = Struct_1(arg_1.a);
    global2 = array<Struct_1, 15>();
    var var_2 = arg_0;
    var var_3 = _wgslsmith_mod_vec2_i32(max(vec2<i32>(_wgslsmith_add_i32(arg_0, -2147483647i), 0i) & _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, 2147483647i) << (vec2<u32>(75027u, 19887u) % vec2<u32>(32u)), vec2<i32>(1i, -3559i)), ~select(max(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, arg_0)), vec2<i32>(20452i, -2942i), vec2<bool>(var_1.a, global1[_wgslsmith_index_u32(u_input.a, 14u)]))), select(reverseBits(firstLeadingBit(vec2<i32>(0i, arg_0))), _wgslsmith_mult_vec2_i32(min(vec2<i32>(-10876i, arg_0), -vec2<i32>(-1i, -2147483647i)), select(countOneBits(vec2<i32>(arg_0, 20260i)), ~vec2<i32>(arg_0, arg_0), !vec2<bool>(true, arg_1.a))), select(vec2<bool>(true, !var_1.a), !(!vec2<bool>(global1[_wgslsmith_index_u32(arg_1.b.x, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)])), all(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(arg_1.b.x, 14u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(76659u, 14u)], arg_1.c.a), vec3<bool>(var_1.a, false, var_1.a))))));
    return countOneBits(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(_wgslsmith_add_i32(-abs(-17874i), _wgslsmith_sub_i32(reverseBits(-14017i), func_1(0i, Struct_2(false, vec3<u32>(u_input.a, 4294967295u, 5063u), global2[_wgslsmith_index_u32(4294967295u, 15u)])))) == abs(_wgslsmith_sub_i32(0i, 1i)));
    var var_1 = func_2();
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(471f * _wgslsmith_f_op_f32(f32(-1f) * -366f));
    var var_4 = abs(~vec2<i32>(0i, -1i)) ^ (select(abs(vec2<i32>(1i, 1i)), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(27777i, 58365i))), !vec2<bool>(false, var_1.a)) | _wgslsmith_add_vec2_i32(-vec2<i32>(1i, 1i), (vec2<i32>(-2147483647i, -39605i) << (var_1.b.zz % vec2<u32>(32u))) >> (firstTrailingBit(var_1.b.zy) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x);
}

