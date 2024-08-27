struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: array<Struct_1, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> bool {
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    let var_0 = u_input.b;
    var var_1 = firstTrailingBit(max(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(61257u, global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<u32>(0u, u_input.a.x ^ 60018u))));
    global1 = array<Struct_1, 29>();
    return false | any(vec3<bool>(true, select(var_0.x, 20223i, true) <= -2147483647i, true));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> i32 {
    let var_0 = firstLeadingBit(u_input.a);
    let var_1 = Struct_2(!(!select(arg_1.yyx, select(vec3<bool>(arg_1.x, true, false), vec3<bool>(arg_1.x, arg_1.x, arg_0.b.x), vec3<bool>(true, arg_0.a.x, arg_0.b.x)), vec3<bool>(true, arg_0.a.x, arg_1.x))), select(arg_0.b, vec4<bool>(arg_1.x, !(u_input.b.x == u_input.c), true, true), all(arg_0.b.zzw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1147f, _wgslsmith_f_op_f32(-1054f + _wgslsmith_f_op_f32(floor(-1533f))), any(select(vec2<bool>(true, arg_1.x), arg_1.ww, vec2<bool>(arg_0.a.x, true)))))));
    let var_2 = _wgslsmith_dot_vec2_u32(~(~_wgslsmith_add_vec2_u32(select(vec2<u32>(var_0.x, var_0.x), vec2<u32>(u_input.a.x, var_0.x), false), u_input.a)), ~(~(~(~vec2<u32>(4294967295u, 8535u)))));
    var var_3 = vec3<i32>(u_input.b.x, u_input.b.x, _wgslsmith_mult_i32(firstLeadingBit(~u_input.b.x), u_input.b.x));
    var var_4 = arg_0.b;
    return -1i;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    let var_0 = vec4<bool>(any(!arg_1.xx), arg_1.x, any(vec4<bool>(!arg_1.x, select(func_2(), arg_1.x, true), arg_3, (true != arg_1.x) & arg_1.x)), false);
    var var_1 = _wgslsmith_div_vec4_i32(-(~select(-vec4<i32>(922i, -39694i, -2147483647i, -74693i), vec4<i32>(u_input.c, -2147483647i, 6257i, u_input.c), true)), _wgslsmith_mod_vec4_i32(vec4<i32>(func_3(Struct_2(vec3<bool>(arg_1.x, arg_3, arg_3), var_0, -1527f), select(var_0, var_0, vec4<bool>(var_0.x, arg_3, var_0.x, false))), _wgslsmith_div_i32(1i, -2147483647i), u_input.c, u_input.c), select(countOneBits(vec4<i32>(u_input.b.x, 15589i, 0i, -2147483647i)), ~vec4<i32>(u_input.b.x, u_input.c, 2147483647i, u_input.c), !vec4<bool>(true, true, arg_1.x, arg_3)) ^ ~(-vec4<i32>(35490i, -2147483647i, -1i, -23553i))));
    let var_2 = Struct_2(!select(!(!arg_1), vec3<bool>(true, !arg_1.x, false), arg_1), var_0, -1566f);
    var_1 = vec4<i32>(var_1.x, 47425i, _wgslsmith_add_i32(abs(u_input.b.x), var_1.x), ~_wgslsmith_add_i32(_wgslsmith_sub_i32(max(var_1.x, 55953i), select(38880i, var_1.x, arg_3)), i32(-1i) * -1i));
    let var_3 = vec3<i32>(-1i) * -select(var_1.zzz, vec3<i32>(-388i, -1i, 1i), false);
    return select(select(vec2<bool>(select(false, false, arg_1.x) == (var_0.x & arg_1.x), _wgslsmith_div_u32(4294967295u, u_input.a.x) <= abs(0u)), vec2<bool>(true, true), select(arg_1.zx, vec2<bool>(arg_1.x, !arg_1.x), arg_1.x)), select(!select(select(var_0.zy, vec2<bool>(var_2.a.x, true), var_2.b.zw), arg_1.zy, true), !vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 27u)] != 9172u, any(vec4<bool>(true, false, var_2.a.x, var_0.x))), !var_0.yz), any(vec2<bool>(_wgslsmith_f_op_f32(sign(-760f)) < var_2.c, true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = ~(i32(-1i) * -51651i);
    let var_1 = -185f;
    var var_2 = Struct_2(select(select(!(!vec3<bool>(false, true, arg_0.x)), !select(arg_0.yww, vec3<bool>(arg_2, true, arg_1.x), true), !select(arg_0.zyx, vec3<bool>(arg_1.x, arg_2, true), true)), !select(select(vec3<bool>(arg_2, arg_0.x, false), arg_0.xzy, false), vec3<bool>(arg_1.x, arg_2, arg_0.x), vec3<bool>(arg_2, true, true)), arg_0.xxx), vec4<bool>(arg_2, !arg_1.x, !all(vec3<bool>(true, true, true)), _wgslsmith_mod_u32(1u, select(119837u, 24050u, false)) < _wgslsmith_div_u32(1u, 10137u)), 101f);
    var var_3 = Struct_2(select(select(vec3<bool>(false | arg_1.x, !arg_2, true), vec3<bool>(false, !arg_1.x, !arg_0.x), !vec3<bool>(var_2.a.x, arg_1.x, var_2.a.x)), vec3<bool>(select(false, true, all(arg_0.zxz)), true, false), !select(select(var_2.b.xww, var_2.a, false), arg_0.ywy, var_2.b.zwz)), var_2.b, _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_1))))), func_1(vec3<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 27u)], 7181u), ~u_input.a.x, reverseBits(1u)), select(select(var_2.b.wyw, vec3<bool>(var_2.b.x, true, var_2.a.x), false), select(vec3<bool>(var_2.b.x, true, arg_2), vec3<bool>(false, true, arg_2), var_2.b.yyw), vec3<bool>(arg_0.x, arg_2, arg_2)), Struct_1(_wgslsmith_f_op_f32(max(var_1, -1000f))), arg_2).x)));
    global1 = array<Struct_1, 29>();
    return Struct_2(var_2.b.ywy, !arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.c + _wgslsmith_div_f32(-871f, _wgslsmith_div_f32(var_2.c, -820f))), _wgslsmith_div_f32(var_2.c, var_1))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(abs(~u_input.b.x), firstLeadingBit(_wgslsmith_sub_i32(u_input.b.x, -1i)));
    var var_1 = func_4(func_4(arg_0.b, vec2<bool>(true, arg_0.a.x), arg_2, -u_input.b << (~(~vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))).b, arg_0.b.xx, false, -u_input.b);
    let var_2 = u_input.b;
    let var_3 = -(-1i ^ _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, ~var_2.x), -35341i));
    var_1 = Struct_2(func_4(vec4<bool>(any(arg_0.b), all(select(vec3<bool>(arg_0.b.x, true, arg_2), vec3<bool>(false, arg_2, false), true)), false, !var_1.a.x), !arg_0.a.zx, true, vec2<i32>(~(-1i), _wgslsmith_mod_i32(var_0, -22842i)) ^ (u_input.b & ~vec2<i32>(var_3, 2147483647i))).a, !select(!(!arg_0.b), arg_0.b, func_4(vec4<bool>(true, true, true, false), vec2<bool>(false, false), !arg_0.a.x, u_input.b).b), _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(832f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-639f - -198f) * _wgslsmith_f_op_f32(arg_0.c + var_1.c)))));
    return global1[_wgslsmith_index_u32(abs(1u), 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(select(vec4<bool>(true, true, false, select(false, true, true)), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), true), select(!func_1(vec3<u32>(29996u, 0u, 1u), vec3<bool>(false, false, true), Struct_1(-1428f), true), vec2<bool>(true, func_2()), vec2<bool>(true, true)), !(all(vec2<bool>(true, false)) && true), vec2<i32>(21468i, 7810i)), 4294967295u, false);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.b.x, -56827i) & vec3<i32>(u_input.c, u_input.b.x, u_input.b.x), ~vec3<i32>(3647i, u_input.c, -2147483647i)), -vec3<i32>(-63934i, 1i, u_input.c) << ((vec3<u32>(34996u, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33462u, 27u)], 27u)], 27u)], 27u)]) << (vec3<u32>(global0[_wgslsmith_index_u32(1u, 27u)], u_input.a.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))), -max(_wgslsmith_clamp_vec3_i32(vec3<i32>(18950i, 2636i, 0i), vec3<i32>(2147483647i, 2147483647i, u_input.b.x), vec3<i32>(8794i, u_input.c, 25568i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 12094i, 21497i), vec3<i32>(u_input.b.x, u_input.c, u_input.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1490f));
}

