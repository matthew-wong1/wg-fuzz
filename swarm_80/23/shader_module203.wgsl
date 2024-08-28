struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: Struct_3,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: vec2<f32> = vec2<f32>(425f, 1342f);

var<private> global2: array<u32, 6>;

var<private> global3: vec4<i32> = vec4<i32>(-1i, -1i, 30546i, -13503i);

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<u32> {
    let var_0 = -_wgslsmith_div_vec4_i32(min(vec4<i32>(-1i, u_input.b, u_input.a >> (0u % 32u), ~(-1i)), vec4<i32>(abs(global4.x), 1i, firstLeadingBit(global3.x), -36330i >> (u_input.e.x % 32u))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(1i, 44928i), _wgslsmith_clamp_i32(global3.x, global4.x, 22473i), _wgslsmith_dot_vec2_i32(global3.zw, global3.wy), global4.x << (global2[_wgslsmith_index_u32(4294967295u, 6u)] % 32u)), vec4<i32>(global3.x, -32790i, 0i, _wgslsmith_mult_i32(global3.x, global4.x))));
    global2 = array<u32, 6>();
    global0 = vec2<bool>(all(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(global0.x, true), global0.x), select(vec2<bool>(true, global0.x), vec2<bool>(false, global0.x), vec2<bool>(false, false))), select(vec2<bool>(false, false), select(vec2<bool>(false, global0.x), vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x)), global0.x), select(true, !global0.x, false))), 2147483647i <= _wgslsmith_div_i32(max(-26411i, -56532i), _wgslsmith_sub_i32(27367i, max(global4.x, 18737i))));
    global3 = vec4<i32>(36434i, -9754i, _wgslsmith_add_i32(_wgslsmith_div_i32(-u_input.b, _wgslsmith_add_i32(global3.x, 1i)), u_input.b), -1i) >> (reverseBits(select(~_wgslsmith_mult_vec4_u32(vec4<u32>(3055u, 17938u, 22559u, 14740u), u_input.e), vec4<u32>(1u, firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26427u, 6u)], 6u)]), abs(u_input.e.x), global2[_wgslsmith_index_u32(0u, 6u)] ^ 0u), var_0.x <= 2147483647i)) % vec4<u32>(32u));
    var var_1 = reverseBits(global4.x);
    return _wgslsmith_mod_vec2_u32(u_input.d.xz, u_input.d.zy);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = ~(~max(u_input.e.yy, ~func_3()));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d, select(vec3<u32>(1259u, ~(~0u), ~u_input.e.x), vec3<u32>(1u, ~(~u_input.d.x), _wgslsmith_clamp_u32(20982u, _wgslsmith_mult_u32(9334u, var_0.x), firstTrailingBit(u_input.c))), !vec3<bool>(all(vec3<bool>(false, false, true)), false, all(vec2<bool>(true, true))))), 6u)];
    var var_2 = Struct_4(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, 8915i, -2147483647i, 39149i), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -1i, 0i, 48331i), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(global3.x, arg_0, global3.x, 2147483647i), vec4<i32>(2147483647i, -11042i, 0i, 2147483647i)))) | firstLeadingBit(select(vec4<i32>(-25679i, arg_0, 36307i, global3.x) << (vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 6u)], 24755u, 42749u, var_0.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-11651i, arg_0, arg_0, 41715i), vec4<i32>(-1i, -2147483647i, global4.x, u_input.a)), true)), Struct_2(Struct_1(true, reverseBits(vec2<i32>(global3.x, global4.x)), any(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), global0.x))), _wgslsmith_f_op_f32(abs(-564f)), Struct_1(false, select(vec2<i32>(global4.x, 12449i), global3.yx, vec2<bool>(global0.x, true)) << (~vec2<u32>(0u, 20296u) % vec2<u32>(32u)), false || (false || global0.x))));
    let var_3 = global2[_wgslsmith_index_u32(~(~(global2[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 6u)] << (1u % 32u))), 6u)];
    var_2 = Struct_4(countOneBits(abs(select(vec4<i32>(u_input.b, global3.x, var_2.a.x, 0i), vec4<i32>(arg_0, arg_0, 1i, u_input.b), var_2.b.c.c))), var_2.b);
    return var_2.b.a;
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_4(~(~_wgslsmith_sub_vec4_i32(-vec4<i32>(28902i, u_input.a, u_input.b, 2147483647i), -vec4<i32>(15401i, global4.x, global3.x, -1i))), Struct_2(func_2(_wgslsmith_sub_i32(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -6846i, 11492i), global3.zyw)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 100f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(227f - global1.x))), func_2(_wgslsmith_mult_i32(-global4.x, -7455i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global1.x)))));
    let var_1 = _wgslsmith_f_op_f32(-global1.x);
    global2 = array<u32, 6>();
    global0 = select(vec2<bool>(false || global0.x, true), select(!(!select(vec2<bool>(var_0.b.c.a, true), vec2<bool>(global0.x, var_0.b.c.a), vec2<bool>(var_0.b.c.c, false))), select(select(vec2<bool>(var_0.b.c.a, global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), global0.x), false), !select(vec2<bool>(false, false), vec2<bool>(var_0.b.c.c, var_0.b.a.c), vec2<bool>(var_0.b.a.c, global0.x)), select(vec2<bool>(true, true), select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, false), false), !vec2<bool>(var_0.b.a.a, var_0.b.c.c))), func_2(-1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(417f, global1.x))).c), select(select(select(vec2<bool>(global0.x, var_0.b.c.c), vec2<bool>(false, true), !var_0.b.c.c), !select(vec2<bool>(true, true), vec2<bool>(var_0.b.c.a, false), global0.x), all(select(vec4<bool>(false, global0.x, true, var_0.b.c.a), vec4<bool>(true, var_0.b.a.c, global0.x, var_0.b.c.a), vec4<bool>(global0.x, true, true, var_0.b.a.c)))), vec2<bool>(any(vec4<bool>(true, var_0.b.c.a, global0.x, true)), any(!vec2<bool>(var_0.b.c.c, true))), vec2<bool>(true, !global0.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(999f, var_1) * vec2<f32>(var_0.b.b, global1.x)), vec2<f32>(-108f, -214f), true)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-287f, var_0.b.b))), vec2<f32>(-1029f, _wgslsmith_f_op_f32(-1391f * global1.x)))));
    return Struct_4(_wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_add_i32(var_0.b.a.b.x, -17915i)), ~0i, -36453i, -var_0.b.c.b.x), var_0.a), Struct_2(Struct_1(true, global3.zx, any(!vec2<bool>(true, var_0.b.c.a))), -1672f, func_2(-1572i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b.b, var_2.x), vec2<f32>(1000f, 1035f))) + vec2<f32>(var_0.b.b, -1820f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = select(vec2<bool>(var_0.b.c.a, all(select(vec2<bool>(var_0.b.a.c, global0.x), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x)), select(vec2<bool>(true, false), vec2<bool>(var_0.b.c.a, true), vec2<bool>(true, global0.x))))), vec2<bool>((var_0.b.c.c || var_0.b.c.a) && !(!global0.x), global0.x), abs(u_input.a) != _wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, ~global3.x, _wgslsmith_sub_i32(global3.x, 60396i)), vec3<i32>(u_input.a, u_input.b, -18579i) >> (~vec3<u32>(0u, 43667u, global2[_wgslsmith_index_u32(11878u, 6u)]) % vec3<u32>(32u))));
    var var_1 = 1000f;
    global4 = -vec2<i32>(-2147483647i, abs(select(u_input.b, global4.x, var_0.b.a.a))) & ~var_0.a.xw;
    var var_2 = vec4<bool>(func_1().b.a.a, global0.x, false, ((_wgslsmith_mult_i32(global4.x, 0i) > 16403i) | !(!var_0.b.c.c)) || var_0.b.a.c);
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.b, global3.x, var_0.a.x)), countOneBits(vec3<i32>(global4.x, -44506i, var_0.b.a.b.x))), _wgslsmith_dot_vec4_i32(var_0.a & var_0.a, _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 29009i, global3.x, global4.x), vec4<i32>(global3.x, -23973i, global3.x, 9406i))), -1i));
}

