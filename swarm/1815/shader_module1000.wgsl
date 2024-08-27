struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(13440u, 4294967295u), 1315f, 1i)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(44134u, 23644u), -1433f, i32(-2147483648))), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(1u, 52625u), 2205f, 26778i)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(1u, 10005u), 953f, 2147483647i)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(4953u, 1u), -1000f, -6240i)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(4742u, 4294967295u), -182f, 9036i)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(52498u, 1u), -556f, 38984i)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(73887u, 0u), 1341f, -1i)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(42948u, 13187u), -1755f, -1150i)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(4294967295u, 0u), 145f, 2147483647i)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(28204u, 4294967295u), 164f, -26315i)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(34274u, 44660u), -654f, -16680i)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(19098u, 27926u), -128f, 42913i)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(17624u, 83281u), -248f, 17109i)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(1u, 0u), 985f, -6147i)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(22785u, 61915u), -443f, i32(-2147483648))));

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(1u, 1u), -1000f, -27660i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(1u >> (global1.b.x % 32u), 16u)];
    var var_1 = ~max(vec4<u32>(global1.b.x, 0u, _wgslsmith_sub_u32(abs(global1.b.x), u_input.d.x), _wgslsmith_clamp_u32(abs(global1.b.x), ~4294967295u, 1u)), min(~vec4<u32>(global1.b.x, 1u, var_0.a.b.x, 1u), select(min(vec4<u32>(var_0.a.b.x, var_0.a.b.x, 1u, var_0.a.b.x), vec4<u32>(global1.b.x, global1.b.x, 1u, global1.b.x)), vec4<u32>(0u, var_0.a.b.x, 25649u, u_input.d.x) ^ vec4<u32>(60238u, 20182u, 0u, global1.b.x), !vec4<bool>(var_0.a.a.x, var_0.a.a.x, global1.a.x, true))));
    let var_2 = -469f;
    let var_3 = Struct_2(var_0.a);
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(15515u, 14071u), ~global1.b.x, _wgslsmith_dot_vec3_u32(var_1.wyy, var_1.xzx)), 16u)];
    return 4294967295u;
}

fn func_4(arg_0: Struct_2) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(35336u, 16u)];
    let var_1 = i32(-1i) * -1i;
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(abs(reverseBits(var_0.a.b)), ~_wgslsmith_add_vec2_u32(var_0.a.b, vec2<u32>(1u, 46614u))) & _wgslsmith_mod_u32(~var_0.a.b.x, 13857u), 16u)];
    global0 = array<Struct_2, 16>();
    var_0 = global0[_wgslsmith_index_u32(global1.b.x, 16u)];
    return min(u_input.a, _wgslsmith_clamp_i32(global1.d, firstTrailingBit(~(i32(-1i) * -33718i)), firstTrailingBit(abs(-1i)) >> (firstTrailingBit(var_0.a.b.x ^ 25971u) % 32u)));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> u32 {
    var var_0 = -vec3<i32>(func_4(global0[_wgslsmith_index_u32(func_3() << ((global1.b.x & 10795u) % 32u), 16u)]), -1i, ~1i);
    global0 = array<Struct_2, 16>();
    let var_1 = _wgslsmith_mod_vec2_i32(var_0.zz & var_0.zx, var_0.yx);
    var var_2 = select(global1.b, ~(vec2<u32>(arg_1.a.b.x, _wgslsmith_add_u32(u_input.d.x, 0u)) >> (global1.b % vec2<u32>(32u))), select(!select(vec2<bool>(true, false), global1.a.ww, vec2<bool>(true, false)), !vec2<bool>(global1.c <= -1000f, arg_1.a.a.x), !select(select(true, arg_1.a.a.x, false), all(vec2<bool>(false, global1.a.x)), global1.a.x)));
    global1 = arg_1.a;
    return _wgslsmith_mult_u32(_wgslsmith_mult_u32(~u_input.c.x, firstLeadingBit(reverseBits(max(u_input.c.x, arg_0)))), 8272u);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = global1.d;
    let var_1 = any(!arg_3.a.a.zzy);
    let var_2 = arg_3.a;
    var var_3 = !var_1;
    let var_4 = var_2;
    return var_2;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_sub_u32(~(~_wgslsmith_dot_vec2_u32(u_input.d, u_input.d)), 4294967295u) << (u_input.c.x % 32u);
    global1 = func_5(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, u_input.a, -1i), vec3<i32>(global1.d, firstTrailingBit(20167i), 7775i) >> (vec3<u32>(~u_input.b, _wgslsmith_add_u32(21537u, 14351u), func_2(0u, global0[_wgslsmith_index_u32(global1.b.x, 16u)])) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(abs(~vec3<i32>(u_input.a, -1i, -1i)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(8869i, u_input.a, -53256i), vec3<i32>(global1.d, global1.d, 0i)), vec3<i32>(global1.d, firstLeadingBit(global1.d), -1i))), select(abs(vec2<i32>(global1.d, 24752i)), abs(~vec2<i32>(-2147483647i, -10996i)) << (~max(vec2<u32>(13266u, 56505u), global1.b) % vec2<u32>(32u)), global1.a.zz), 1i, Struct_2(Struct_1(select(vec4<bool>(false, global1.a.x, true, false), global1.a, false), ~_wgslsmith_sub_vec2_u32(u_input.c, u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + 2963f)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(global1.d, 0i), -2147483647i))));
    var var_1 = _wgslsmith_div_i32(global1.d, -2147483647i) <= -max(firstTrailingBit(i32(-1i) * -13137i), -52557i);
    var var_2 = func_5(vec3<i32>(~2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(1i, -3074i, u_input.a), vec3<i32>(global1.d, global1.d, 2147483647i)), firstTrailingBit(vec3<i32>(62193i, u_input.a, global1.d))), ~global1.d), vec2<i32>(-1i) * -firstLeadingBit(abs(vec2<i32>(27792i, u_input.a))), max(~30295i, -18673i) << (select(func_2(15349u, global0[_wgslsmith_index_u32(4294967295u, 16u)]), var_0 >> (_wgslsmith_div_u32(global1.b.x, 1u) % 32u), _wgslsmith_f_op_f32(global1.c - -1067f) == _wgslsmith_f_op_f32(-492f * -1869f)) % 32u), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_div_u32(~u_input.c.x, ~u_input.c.x), ~4294967295u), 16u)]);
    let var_3 = vec4<bool>(true, select(var_2.a.x, true, global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -520f) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(412f - global1.c))), any(vec4<bool>(true, var_2.a.x, any(!vec2<bool>(false, var_2.a.x)), false)));
    return Struct_2(func_5(vec3<i32>(-1i, var_2.d, 14695i), vec2<i32>(global1.d, firstTrailingBit(u_input.a)), -(var_2.d & 1i), Struct_2(Struct_1(!vec4<bool>(true, var_3.x, var_2.a.x, global1.a.x), vec2<u32>(4294967295u, global1.b.x), 1797f, select(global1.d, -2147483647i, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_div_vec3_i32(-(firstLeadingBit(vec3<i32>(global1.d, -20555i, 23814i)) | _wgslsmith_sub_vec3_i32(vec3<i32>(global1.d, -2147483647i, global1.d), vec3<i32>(32035i, -20766i, -1i))), vec3<i32>(max(global1.d, global1.d), ~(-global1.d), _wgslsmith_mult_i32(firstTrailingBit(global1.d), -2147483647i)));
    var var_1 = global0[_wgslsmith_index_u32(~0u, 16u)];
    var var_2 = _wgslsmith_div_u32(_wgslsmith_mult_u32(~58549u, min(67023u, _wgslsmith_mod_u32(4294967295u, 4294967295u))), ~(~(~global1.b.x))) >> (~var_1.a.b.x % 32u);
    var var_3 = Struct_2(var_1.a);
    var_1 = func_1();
    var var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -56899i, var_1.a.d), vec3<i32>(1i, 1i, var_1.a.d))), var_0.xy, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_0.xz, vec2<i32>(0i, 2147483647i)) ^ (1i & var_4.d), -17235i), func_1()).b.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1652f, 128f) - vec2<f32>(-908f, global1.c)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-143f, 686f) + vec2<f32>(1354f, var_4.c))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(393f, var_1.a.c) - vec2<f32>(122f, var_1.a.c)))))));
}

