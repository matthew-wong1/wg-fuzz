struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    let var_0 = Struct_1(vec3<bool>(!any(!arg_0.a), true, any(vec2<bool>(true, true & arg_0.d.x))), vec3<i32>(arg_0.b.x, 2147483647i, ~_wgslsmith_div_i32(-2147483647i, arg_0.b.x)), ~(-(vec2<i32>(2147483647i, arg_0.c.x) ^ ~arg_0.c)), vec3<bool>(!arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) - _wgslsmith_f_op_f32(f32(-1f) * -415f)) == -259f, arg_0.a.x), arg_0.e);
    global0 = array<u32, 26>();
    return -(~(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_0.c.x, -10294i, 17834i), vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, arg_0.c.x)))) ^ ~(-vec4<i32>(29559i, 0i, -2147483647i, 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<i32>) -> vec3<bool> {
    global0 = array<u32, 26>();
    let var_0 = -(vec3<i32>(abs(-arg_2.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-12011i, 23779i), 0i), arg_2.x) | vec3<i32>(0i, arg_2.x, 17218i));
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    let var_1 = Struct_1(!(!select(vec3<bool>(false, true, arg_0.x), select(vec3<bool>(arg_1, false, false), vec3<bool>(arg_0.x, true, arg_1), vec3<bool>(true, false, arg_1)), select(vec3<bool>(true, true, arg_1), vec3<bool>(false, arg_1, true), vec3<bool>(false, arg_0.x, arg_1)))), vec3<i32>(-_wgslsmith_add_i32(-16215i, -48566i & arg_2.x), 2147483647i, abs(~arg_2.x)), arg_2 & arg_2, vec3<bool>(arg_2.x < ((var_0.x & 1i) << (firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 26u)]) % 32u)), all(vec3<bool>(true, false, !arg_0.x)), !(!any(vec4<bool>(arg_0.x, arg_1, false, arg_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1084f, -1430f, 1640f, -354f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-939f, -1881f, -897f, 452f))))))));
    return !vec3<bool>(any(vec3<bool>(any(arg_0), false, true)), !(!any(vec2<bool>(var_1.d.x, false))), false);
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-firstTrailingBit(-vec4<i32>(-2147483647i, -55631i, -44864i, -11491i)), _wgslsmith_add_vec4_i32(-vec4<i32>(15063i, 1i, 7470i, 8152i), firstLeadingBit(vec4<i32>(-1i, 24849i, 55884i, -2147483647i) << (vec4<u32>(global0[_wgslsmith_index_u32(35178u, 26u)], 1u, 77502u, u_input.b) % vec4<u32>(32u))))), _wgslsmith_mod_vec4_i32(-vec4<i32>(max(0i, -1i), _wgslsmith_clamp_i32(34208i, 0i, 0i), 2147483647i, firstTrailingBit(0i)), countOneBits(func_2(Struct_1(vec3<bool>(false, true, false), vec3<i32>(40411i, -92368i, -30974i), vec2<i32>(25745i, -1i), vec3<bool>(false, true, true), vec4<f32>(436f, -351f, 550f, 368f)))) >> (vec4<u32>(~4294967295u, ~1u, global0[_wgslsmith_index_u32(7930u, 26u)], u_input.b << (global0[_wgslsmith_index_u32(6743u, 26u)] % 32u)) % vec4<u32>(32u))));
    let var_1 = Struct_1(select(vec3<bool>(true, true, true), select(func_3(select(vec2<bool>(false, false), vec2<bool>(true, true), true), true, reverseBits(var_0.zx)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), func_3(func_3(vec2<bool>(true, true), true, var_0.zw).zz, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)), firstTrailingBit(vec2<i32>(-1i, 0i)))), max(var_0.xxy, -min(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), var_0.yyw), var_0.zzw)), abs(-(~select(vec2<i32>(var_0.x, -2147483647i), var_0.zx, false))), vec3<bool>(((var_0.x > var_0.x) & true) & true, !(-1i <= func_2(Struct_1(vec3<bool>(false, true, true), vec3<i32>(var_0.x, var_0.x, 0i), var_0.yx, vec3<bool>(false, false, false), vec4<f32>(1250f, 1000f, -655f, -588f))).x), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2298f, 170f, 997f, -599f))))));
    global0 = array<u32, 26>();
    let var_2 = Struct_1(select(select(var_1.a, var_1.a, true & var_1.a.x), !select(vec3<bool>(var_1.a.x, true, false), vec3<bool>(true, true, false), var_1.c.x <= 2147483647i), vec3<bool>(489f == _wgslsmith_f_op_f32(var_1.e.x - -355f), !any(vec4<bool>(true, false, true, var_1.a.x)), func_3(var_1.a.zz, false, -var_0.yy).x)), var_0.yxz, var_0.xx, select(func_3(!var_1.d.zz, true, _wgslsmith_div_vec2_i32(select(var_1.c, vec2<i32>(var_1.b.x, var_1.c.x), vec2<bool>(true, var_1.a.x)), vec2<i32>(var_0.x, var_0.x))), var_1.a, !(!var_1.d)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2042f, var_1.e.x)), var_1.e.x), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.e.x, 1446f)), var_1.e.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-465f * var_1.e.x), _wgslsmith_f_op_f32(var_1.e.x - var_1.e.x), _wgslsmith_div_f32(217f, 1843f), -280f) * var_1.e))));
    global0 = array<u32, 26>();
    return !vec4<bool>(true || select(true, true, true), any(select(var_1.d, !var_1.d, !var_2.d)), true, var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(_wgslsmith_mult_u32(788u, 0u) > abs(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(33734u, 26u)], u_input.b)), true);
    var var_1 = select(func_1(), select(!vec4<bool>(!var_0.x, true, true | var_0.x, false), vec4<bool>(u_input.b > _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 26u)], 4294967295u), true, var_0.x, true), vec4<bool>(false, any(!vec3<bool>(var_0.x, var_0.x, true)), true, true)), any(func_3(!vec2<bool>(var_0.x, var_0.x), true, vec2<i32>(-1i) * -vec2<i32>(-1i, -2147483647i))));
    global0 = array<u32, 26>();
    var var_2 = !func_1().x;
    global0 = array<u32, 26>();
    var var_3 = select(var_1.wwy, !vec3<bool>(func_3(var_1.yw, func_3(vec2<bool>(var_0.x, var_1.x), var_1.x, vec2<i32>(-24574i, 1i)).x, vec2<i32>(-25063i, 6991i) >> (u_input.c % vec2<u32>(32u))).x, true, !(var_0.x == false)), any(!var_1.zzx));
    let var_4 = _wgslsmith_f_op_f32(select(-2178f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1664f, _wgslsmith_div_f32(1006f, 1000f), true)), 2300f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(366f, 803f))))), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, u_input.c.x), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], 0u, 22906u))), abs(abs(vec3<u32>(22469u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 26u)], 26u)], 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60694u, 26u)], 26u)], 26u)])))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2314f))))), -216f), -(i32(-1i) * -58090i), 443f);
}

