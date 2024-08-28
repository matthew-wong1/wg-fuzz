struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 16> = array<f32, 16>(-813f, 533f, -1058f, 215f, 1497f, 1063f, -838f, -659f, 423f, -1000f, -547f, 625f, 117f, -1408f, -289f, -810f);

var<private> global2: vec2<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: bool) -> u32 {
    return 1u;
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec3<i32>) -> u32 {
    global1 = array<f32, 16>();
    let var_0 = _wgslsmith_mult_i32(-1i, ~(~1i));
    global0 = true;
    var var_1 = Struct_2(vec3<i32>(abs(u_input.a & arg_0) << (1988u % 32u), arg_0, u_input.a), Struct_1(vec4<i32>(u_input.a, -1i, _wgslsmith_mod_i32(var_0 << (4294967295u % 32u), reverseBits(2147483647i)), select(~arg_2.x, -1i, true)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 0u)), vec2<u32>(4294967295u, 14028u)), select(~vec2<u32>(34471u, 3584u), vec2<u32>(0u, 19774u), any(vec4<bool>(false, false, false, true)))), countOneBits(abs(_wgslsmith_dot_vec2_i32(arg_2.xx, vec2<i32>(2147483647i, u_input.a))))), false && (1u > select(1u, 1u, any(vec4<bool>(true, false, true, false)))), select(_wgslsmith_add_vec3_i32(arg_2, arg_2), firstLeadingBit(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(11218i, 30706i, arg_0)), _wgslsmith_div_vec3_i32(arg_2, arg_2))), true));
    var_1 = Struct_2(vec3<i32>(arg_2.x << (69848u % 32u), arg_2.x, _wgslsmith_mult_i32(-2147483647i, ~7061i ^ firstTrailingBit(arg_2.x))), var_1.b, true, abs(select(var_1.d, vec3<i32>(arg_2.x, 0i, u_input.a) & arg_2, !var_1.c)));
    return var_1.b.b;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec4_u32(select(firstTrailingBit(max(~vec4<u32>(4294967295u, 8783u, 55404u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(~4294967295u ^ func_2(false), ~abs(19795u), func_2(global2.x < global2.x), _wgslsmith_clamp_u32(1u, min(0u, 1u), func_3(0i, Struct_4(global2.x), vec3<i32>(2147483647i, -1i, 12497i)))), any(vec3<bool>(true, true, true))), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(11632u, 98041u, 0u, 68110u), vec4<u32>(39494u, 12774u, 4294967295u, 57974u), true) >> (vec4<u32>(63919u, 1u, 1u, 0u) % vec4<u32>(32u))), 1u, _wgslsmith_mult_u32(~0u, abs(1u))));
    let var_1 = Struct_2(-min(vec3<i32>(u_input.a, firstLeadingBit(u_input.a), 1i), vec3<i32>(-u_input.a, u_input.a, ~u_input.a)), Struct_1(vec4<i32>(countOneBits(u_input.a), _wgslsmith_div_i32(reverseBits(u_input.a), 1i), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-12445i, u_input.a, u_input.a), vec3<i32>(u_input.a, 42214i, 0i)), ~u_input.a), 101380i), 1u, ~_wgslsmith_clamp_i32(u_input.a, u_input.a, -1i)), true, ~firstTrailingBit(-vec3<i32>(24893i, 1i, u_input.a)));
    var_0 = 78520u;
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1685f, global2.x)))), vec2<f32>(_wgslsmith_f_op_f32(1000f + -665f), global1[_wgslsmith_index_u32(~16570u, 16u)]), select(!vec2<bool>(true, var_1.c), !vec2<bool>(true, var_1.c), var_1.c)))));
    global1 = array<f32, 16>();
    return Struct_2(~(~countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 55560i, u_input.a), var_1.b.a.wzx))), Struct_1(var_1.b.a, 0u, 0i), (true && (reverseBits(var_1.a.x) >= u_input.a)) | (global2.x != _wgslsmith_f_op_f32(1276f + 560f)), reverseBits(-abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -2147483647i), var_1.d, vec3<i32>(36198i, var_1.b.a.x, var_1.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1());
    var var_1 = var_0.a.d;
    let var_2 = var_0.a.b.b;
    var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(select(var_0.a.a, -vec3<i32>(-34628i, 10204i, u_input.a), vec3<bool>(var_0.a.c, false, true))), vec3<i32>(_wgslsmith_sub_i32(reverseBits(var_1.x), ~16953i), _wgslsmith_mult_i32(-1i, 13288i) & var_0.a.a.x, 47354i)), -select(countOneBits(vec3<i32>(var_0.a.d.x, var_1.x, u_input.a)), ~vec3<i32>(-2147483647i, -12257i, var_0.a.a.x), vec3<bool>(!var_0.a.c, var_0.a.c, u_input.a <= var_1.x)));
    var_1 = _wgslsmith_mult_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.a.d, var_0.a.a, -vec3<i32>(var_0.a.d.x, var_1.x, var_0.a.b.c)), var_0.a.a & var_0.a.d)), vec3<i32>(_wgslsmith_dot_vec2_i32((var_1.xx >> (vec2<u32>(var_2, 0u) % vec2<u32>(32u))) >> (vec2<u32>(74725u, var_2) % vec2<u32>(32u)), ~(~vec2<i32>(var_1.x, var_0.a.b.a.x))), -40374i, var_0.a.d.x));
    let var_3 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1304f - global1[_wgslsmith_index_u32(1568u, 16u)]), _wgslsmith_f_op_f32(abs(-2666f))) - _wgslsmith_f_op_f32(select(-1000f, global1[_wgslsmith_index_u32(var_2 << (var_0.a.b.b % 32u), 16u)], true))) <= 1f, var_0);
    var var_4 = abs(vec2<u32>(~var_0.a.b.b, 0u >> (0u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, -var_3.b.a.b.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, -2397f), vec2<f32>(-450f, -260f), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(var_0.a.b.b, 16u)], global2.x) - vec2<f32>(-146f, 296f)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 167f))))));
}

