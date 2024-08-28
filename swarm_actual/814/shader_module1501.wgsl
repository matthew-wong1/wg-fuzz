struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<f32, 16> = array<f32, 16>(1000f, -497f, 394f, 613f, -481f, 1412f, -637f, 1358f, -593f, 651f, 1071f, 326f, -298f, -187f, -650f, -887f);

var<private> global2: array<i32, 18> = array<i32, 18>(2147483647i, 17354i, -1i, -1i, -31899i, -1i, 8345i, 2147483647i, i32(-2147483648), -69521i, -29248i, 1i, -44170i, 24546i, i32(-2147483648), -70622i, 2147483647i, -1i);

var<private> global3: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), 35710i, -24178i), vec3<i32>(2147483647i, -46070i, 59903i), vec3<i32>(12564i, 44536i, 25132i), vec3<i32>(0i, -30966i, 0i), vec3<i32>(16059i, 27649i, 24710i), vec3<i32>(1i, 26701i, 57488i), vec3<i32>(-14810i, -20488i, -1i), vec3<i32>(-22062i, 21641i, -17312i), vec3<i32>(-26836i, i32(-2147483648), 7405i), vec3<i32>(-18334i, -7877i, -21698i), vec3<i32>(2147483647i, 1i, 14827i), vec3<i32>(2147483647i, 20112i, 2147483647i), vec3<i32>(0i, 46561i, 29419i), vec3<i32>(-25055i, -12406i, -9522i), vec3<i32>(-1i, 39067i, -1416i), vec3<i32>(-1i, 2147483647i, -26112i), vec3<i32>(i32(-2147483648), -14713i, -10293i), vec3<i32>(2147483647i, -16702i, 1i), vec3<i32>(-17467i, 33383i, 2147483647i), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(1i, i32(-2147483648), -5932i), vec3<i32>(i32(-2147483648), 71952i, i32(-2147483648)), vec3<i32>(-16666i, -1i, -33559i), vec3<i32>(i32(-2147483648), 26285i, -1i), vec3<i32>(-1572i, 1i, 2147483647i), vec3<i32>(3269i, 10260i, 2147483647i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)));

var<private> global4: Struct_3;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> i32 {
    global3 = array<vec3<i32>, 28>();
    let var_0 = 4294967295u;
    global2 = array<i32, 18>();
    var var_1 = u_input.a.x | -global4.a.a.b.x;
    global1 = array<f32, 16>();
    return ~global2[_wgslsmith_index_u32(1u, 18u)];
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = vec3<i32>(967i, _wgslsmith_mod_i32(firstTrailingBit(arg_0.b.a.x), countOneBits(countOneBits(_wgslsmith_mod_i32(-42653i, -1i)))), max(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 112179u), abs(vec2<u32>(u_input.b, 2768u))), 18u)], -2147483647i));
    var_0 = _wgslsmith_mult_vec3_i32(-(_wgslsmith_add_vec3_i32(~global4.a.a.a, u_input.c) ^ global4.a.c.a), vec3<i32>(u_input.a.x, -9422i, u_input.c.x));
    let var_1 = arg_0;
    return vec2<u32>(_wgslsmith_div_u32(~(~(~4294967295u)), u_input.b & u_input.b), ~(countOneBits(_wgslsmith_clamp_u32(u_input.b, u_input.b, 0u)) << (4294967295u % 32u)));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<f32>) -> vec4<i32> {
    var var_0 = global4.a.c;
    global0 = array<Struct_1, 9>();
    var var_1 = ~_wgslsmith_mod_i32(-2147483647i ^ (arg_1.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(24719u, u_input.b)) % 32u)), abs(func_2()));
    global3 = array<vec3<i32>, 28>();
    var var_2 = Struct_2(global4.b, global1[_wgslsmith_index_u32(~u_input.b, 16u)], global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(max(~vec2<u32>(30843u, u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 20047u), vec2<u32>(u_input.b, 13417u), vec2<u32>(u_input.b, u_input.b))), select(func_3(Struct_3(Struct_2(global4.b, global4.a.b, global4.c.a, global4.a.d), global4.c.c, global4.c)), ~vec2<u32>(30628u, u_input.b), !vec2<bool>(false, global4.c.d.x))), 35061u), 9u)], !(!select(!vec2<bool>(global4.a.d.x, global4.c.d.x), global4.a.d, false)));
    return max(var_0.b, _wgslsmith_sub_vec4_i32(~firstTrailingBit(vec4<i32>(1i, u_input.c.x, -17954i, u_input.a.x)), firstTrailingBit(vec4<i32>(1i, arg_1.x, -43372i, global4.a.a.a.x))) & (vec4<i32>(-1i) * -(var_0.b | u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_3(global4.a, Struct_1(vec3<i32>(-1i, max(~42966i, _wgslsmith_mod_i32(-26175i, 1i)), -47889i), _wgslsmith_mod_vec4_i32(func_1(_wgslsmith_f_op_f32(-495f * -528f), -vec3<i32>(-6477i, 2147483647i, 36293i), _wgslsmith_f_op_vec2_f32(vec2<f32>(1568f, global4.a.b) * vec2<f32>(global4.c.b, 338f))), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 18u)], min(23835i, 1i), _wgslsmith_dot_vec2_i32(u_input.a.zw, u_input.a.yy), -global4.b.b.x))), global4.c);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.b, 16u)]), global4.c.b);
    let var_1 = select(select(!(!select(global4.c.d, vec2<bool>(true, global4.a.d.x), global4.a.d)), !global4.a.d, !select(!vec2<bool>(false, global4.a.d.x), select(vec2<bool>(false, true), vec2<bool>(global4.c.d.x, true), global4.a.d), select(global4.c.d, global4.a.d, true))), select(!(!select(global4.c.d, vec2<bool>(global4.a.d.x, global4.a.d.x), vec2<bool>(false, false))), !global4.a.d, global4.c.d), true && !select(false, u_input.b < 24256u, all(vec4<bool>(true, global4.c.d.x, true, false))));
    var var_2 = Struct_3(global4.c, Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, abs(47996i), max(-2147483647i, u_input.a.x)), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-26254i, -14268i, u_input.a.x), vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 18u)], u_input.a.x, 9309i)))), ~(vec4<i32>(0i, u_input.c.x, -13576i, -2770i) >> ((vec4<u32>(81507u, 4294967295u, 39448u, 1u) | vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u)))), global4.c);
    let var_3 = Struct_1(u_input.a.zyx, firstLeadingBit(var_2.c.a.b));
    let var_4 = !(var_2.a.a.b.x < (~var_3.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.b), vec3<u32>(4519u, u_input.b, u_input.b)) % 32u))) != var_1.x;
    var var_5 = Struct_3(var_2.c, Struct_1(~u_input.c, _wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(2147483647i), u_input.a.x ^ var_3.b.x, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.b, 18u)], global4.b.b.x), func_2()), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 0i, 20877i, 2147483647i), vec4<i32>(var_2.a.c.a.x, global4.b.a.x, 1851i, global2[_wgslsmith_index_u32(42143u, 18u)]))))), Struct_2(var_2.a.a, -477f, var_3, select(!(!var_1), select(!global4.c.d, global4.a.d, var_1), all(select(vec4<bool>(var_1.x, var_1.x, true, var_4), vec4<bool>(true, var_2.c.d.x, var_4, true), var_4)))));
    var var_6 = vec3<u32>(~u_input.b, u_input.b, abs(1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, 7105u), vec3<u32>(1u, u_input.b, var_6.x)), ~vec3<u32>(1u, 4294967295u, var_6.x)) >> (~select(vec3<u32>(35485u, var_6.x, 0u), vec3<u32>(u_input.b, u_input.b, 11077u), var_5.a.d.x) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(44600u, 1u, 8945u), vec3<u32>(var_6.x, 6816u, u_input.b), vec3<u32>(93492u, 4294967295u, var_6.x)), select(vec3<u32>(24401u, 4294967295u, 50739u), vec3<u32>(var_6.x, u_input.b, var_6.x), vec3<bool>(true, var_4, true)))), var_0, global4.c.b, _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(var_6.x, 6899u, 0u)) | ((vec3<u32>(83088u, u_input.b, u_input.b) ^ vec3<u32>(0u, var_6.x, 0u)) & _wgslsmith_div_vec3_u32(vec3<u32>(var_6.x, u_input.b, u_input.b), vec3<u32>(4294967295u, var_6.x, var_6.x))), (~vec3<u32>(u_input.b, 0u, 71269u) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 127087u, var_6.x), vec3<u32>(73828u, var_6.x, 4294967295u)) % vec3<u32>(32u))) ^ vec3<u32>(var_6.x & 21338u, u_input.b ^ var_6.x, ~var_6.x)));
}

