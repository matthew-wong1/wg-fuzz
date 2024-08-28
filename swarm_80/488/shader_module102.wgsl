struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<bool>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: vec3<bool>;

var<private> global2: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global3: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-509f, 317f, 583f, arg_0.c.x)))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -395f) - 1505f) + var_0.x)))));
    let var_2 = _wgslsmith_mod_vec3_i32(-arg_2.xwx, vec3<i32>(arg_0.b, ~arg_0.b, -13699i));
    let var_3 = min(~firstTrailingBit(_wgslsmith_clamp_i32(var_2.x, arg_2.x, global0[_wgslsmith_index_u32(0u, 2u)]) | _wgslsmith_mult_i32(15095i, arg_0.b)), abs(-global0[_wgslsmith_index_u32(17516u, 2u)]) << (28084u % 32u));
    let var_4 = select(vec2<bool>(~arg_0.b > abs(-2147483647i), any(vec3<bool>(true, arg_1.x, arg_1.x)) && any(global2[_wgslsmith_index_u32(39616u, 20u)])), select(vec2<bool>(arg_1.x, true), !(!global1.zz), select(global1.zx, vec2<bool>(select(arg_1.x, global1.x, true), all(arg_1)), !select(vec2<bool>(true, true), vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, true)))), !global1.xx);
    return _wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(arg_0.d.x - arg_0.d.x));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_2(Struct_1((vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], -4144i, -40011i) << (reverseBits(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)) % vec4<u32>(32u))) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 10370u, 4294967295u, 81332u), vec4<u32>(80936u, 50245u, u_input.a, 68027u)) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~u_input.a, _wgslsmith_sub_u32(u_input.a, 24586u)), 2u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-834f - -921f), _wgslsmith_f_op_f32(sign(2140f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(728f, -1204f) * vec2<f32>(280f, -613f)) + vec2<f32>(-290f, -1006f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(-3528i, -2147483647i, -1i, global0[_wgslsmith_index_u32(47757u, 2u)]), 29379i, vec2<f32>(-930f, -483f), vec3<f32>(-130f, 308f, 262f)), global1.zz, vec4<i32>(global0[_wgslsmith_index_u32(0u, 2u)], -1i, 2147483647i, global0[_wgslsmith_index_u32(32352u, 2u)]))), _wgslsmith_f_op_f32(-767f * -242f), _wgslsmith_f_op_f32(-387f + 670f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(882f, 543f, -1308f)))))), ~(~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 5545u), vec2<u32>(4294967295u, 20980u), vec2<u32>(u_input.a, 44236u)), select(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 13385u), vec2<bool>(arg_0, global1.x)), select(true, false, global1.x))), Struct_1(max(vec4<i32>(-1i, 0i, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], -12251i, global0[_wgslsmith_index_u32(u_input.a, 2u)], 8967i), vec4<i32>(global0[_wgslsmith_index_u32(78311u, 2u)], -6561i, 70812i, global0[_wgslsmith_index_u32(u_input.a, 2u)]))) & vec4<i32>(_wgslsmith_div_i32(-2147483647i, global0[_wgslsmith_index_u32(53918u, 2u)]), i32(-1i) * -1i, global0[_wgslsmith_index_u32(u_input.a, 2u)], ~global0[_wgslsmith_index_u32(3956u, 2u)]), _wgslsmith_mult_i32(reverseBits(~(-71312i)), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, 25333u), 2u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(405f, -2721f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1494f - -1000f) - _wgslsmith_f_op_f32(971f * -1026f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -703f)), -1000f)), select(!select(global1.xx, global1.zx, select(vec2<bool>(true, false), global2[_wgslsmith_index_u32(u_input.a, 20u)], vec2<bool>(true, true))), !global1.zz, any(vec3<bool>(false, true, any(vec4<bool>(false, global1.x, global1.x, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-969f + 1f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1463f, _wgslsmith_f_op_f32(min(1916f, 1470f)), arg_0))))));
    var var_1 = abs(4294967295u);
    let var_2 = Struct_1(var_0.c.a, ~global0[_wgslsmith_index_u32(var_0.b.x, 2u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -954f))), var_0.a.c.x)), _wgslsmith_f_op_vec3_f32(var_0.c.d - var_0.c.d));
    var var_3 = vec3<bool>(any(select(vec3<bool>(!arg_0, false, arg_0 & arg_0), !(!vec3<bool>(arg_0, arg_0, false)), select(!vec3<bool>(true, global1.x, true), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(0u, 2u)] != 14129i))), any(vec3<bool>(true, any(vec2<bool>(arg_0, arg_0)) || arg_0, all(!global2[_wgslsmith_index_u32(var_0.b.x, 20u)]))), arg_0);
    var_0 = Struct_2(var_0.c, select(vec2<u32>(0u, u_input.a), firstLeadingBit(firstTrailingBit(min(var_0.b, vec2<u32>(var_0.b.x, 1u)))), vec2<bool>(arg_0, !var_0.d.x | !global1.x)), Struct_1(reverseBits(var_0.a.a), -1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.x, var_0.c.d.x) - var_2.c) - _wgslsmith_f_op_vec2_f32(var_0.a.d.zz + var_2.c)) * _wgslsmith_f_op_vec2_f32(var_0.c.d.xz * var_0.a.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.x, var_0.c.c.x, var_2.c.x)) + var_0.c.d)), var_0.d, -725f);
    return Struct_2(Struct_1(_wgslsmith_add_vec4_i32(-countOneBits(vec4<i32>(2147483647i, var_0.c.a.x, var_2.b, -32892i)), vec4<i32>(global0[_wgslsmith_index_u32(1u, 2u)], ~var_0.a.b, i32(-1i) * -2147483647i, global0[_wgslsmith_index_u32(var_0.b.x, 2u)])), global0[_wgslsmith_index_u32(45568u, 2u)], var_2.c, _wgslsmith_f_op_vec3_f32(-var_2.d)), var_0.b, var_0.c, select(select(select(!var_0.d, select(vec2<bool>(false, global1.x), var_0.d, global1.x), false), select(var_0.d, vec2<bool>(false, arg_0), var_2.d.x < var_0.c.c.x), vec2<bool>(!arg_0, any(vec4<bool>(var_3.x, var_0.d.x, global1.x, global1.x)))), var_0.d, global1.x), _wgslsmith_f_op_f32(-var_0.e));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: vec3<f32>) -> f32 {
    let var_0 = func_2(false);
    let var_1 = var_0.c.a.xx;
    var var_2 = Struct_3(Struct_2(func_2(global1.x).a, ~countOneBits(var_0.b), Struct_1(vec4<i32>(-var_0.a.a.x, global0[_wgslsmith_index_u32(49577u, 2u)], ~(-25726i), -27356i), -(i32(-1i) * -1i), var_0.c.d.xz, arg_3), global2[_wgslsmith_index_u32(74481u, 20u)], 1150f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-668f, -608f, -1435f, _wgslsmith_f_op_f32(-var_0.e))))));
    var var_3 = arg_2;
    var var_4 = vec2<bool>(((_wgslsmith_dot_vec2_i32(var_0.a.a.xy, vec2<i32>(2147483647i, 0i)) <= arg_0) && (~arg_1 <= countOneBits(4294967295u))) | true, true);
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 43625u;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(402f, 436f)), _wgslsmith_f_op_f32(f32(-1f) * -1298f))))), _wgslsmith_f_op_f32(f32(-1f) * -565f), _wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 2u)]), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec2<i32>(1i, 0i))), vec2<i32>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(var_0, 2u)]) & _wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_0, 2u)], -2147483647i), vec2<i32>(-4847i, global0[_wgslsmith_index_u32(0u, 2u)]))), select(0u, reverseBits(min(u_input.a, var_0)), true), !global1.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(882f, 1173f, -1566f)))))));
    var var_2 = _wgslsmith_add_vec4_i32(~select(vec4<i32>(global0[_wgslsmith_index_u32(var_0, 2u)], -27291i, -22360i, global0[_wgslsmith_index_u32(u_input.a, 2u)]), firstLeadingBit(vec4<i32>(0i, -11456i, global0[_wgslsmith_index_u32(var_0, 2u)], global0[_wgslsmith_index_u32(var_0, 2u)])), vec4<bool>(global1.x, global1.x, global1.x, true)), countOneBits(vec4<i32>(1i, abs(global0[_wgslsmith_index_u32(var_0, 2u)]), -50386i, 1i))) >> (_wgslsmith_div_vec4_u32(abs(vec4<u32>(23641u, var_0, firstLeadingBit(53059u), _wgslsmith_mod_u32(12710u, 4294967295u))), vec4<u32>(~0u, _wgslsmith_clamp_u32(u_input.a, ~u_input.a, u_input.a), 4294967295u, min(var_0, u_input.a << (0u % 32u)))) % vec4<u32>(32u));
    var var_3 = select(select(select(!vec3<bool>(false, false, global1.x), !(!vec3<bool>(global1.x, true, global1.x)), !global1.x), !select(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, true, global1.x), global1.x), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, true, false)), any(vec3<bool>(true, true, true))), select(select(!vec3<bool>(false, global1.x, global1.x), !vec3<bool>(global1.x, true, true), vec3<bool>(true, global1.x, false)), vec3<bool>(true, global1.x, false), !global1.x)), !select(select(!vec3<bool>(true, false, global1.x), vec3<bool>(true, global1.x, global1.x), all(vec3<bool>(false, false, true))), !vec3<bool>(global1.x, global1.x, false), !vec3<bool>(true, true, global1.x)), !vec3<bool>(global1.x, true, global1.x));
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-714f - _wgslsmith_f_op_f32(-335f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x), var_1.x))), var_1.x));
    var var_5 = _wgslsmith_div_u32(~var_0, ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, var_0), vec2<u32>(83468u, 4294967295u)), func_2(var_3.x).b), ~(~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(firstLeadingBit(vec4<i32>(4378i, -9475i, -2147483647i, global0[_wgslsmith_index_u32(697u, 2u)]) | vec4<i32>(1i, global0[_wgslsmith_index_u32(1u, 2u)], 31002i, var_2.x))), vec4<i32>(abs(-11861i), global0[_wgslsmith_index_u32(var_0, 2u)], var_2.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0, 67891u, var_0) >> (vec4<u32>(1u, u_input.a, u_input.a, 10193u) % vec4<u32>(32u)), select(vec4<u32>(58550u, 1u, u_input.a, u_input.a), vec4<u32>(var_0, 59981u, 0u, var_0), global1.x)), 2u)])), vec2<u32>(102221u, ~func_2(false).b.x) ^ select(~vec2<u32>(u_input.a, var_0), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, var_0)), !global1.yx), _wgslsmith_f_op_f32(-var_4), var_1.x);
}

