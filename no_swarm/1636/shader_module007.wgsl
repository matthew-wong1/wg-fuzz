struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(421f);

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(-9839i, vec3<bool>(true, false, true), vec2<i32>(2147483647i, 0i), 1i), Struct_2(-38948i, vec3<bool>(true, true, true), vec2<i32>(-1i, 43378i), -37357i), Struct_2(64537i, vec3<bool>(false, false, false), vec2<i32>(2147483647i, 1i), -29921i), Struct_2(1i, vec3<bool>(false, true, true), vec2<i32>(2147483647i, -1i), -16454i), Struct_2(1i, vec3<bool>(true, true, true), vec2<i32>(1i, 4927i), i32(-2147483648)), Struct_2(0i, vec3<bool>(false, true, false), vec2<i32>(2147483647i, 25884i), -4008i), Struct_2(2147483647i, vec3<bool>(true, false, true), vec2<i32>(-25477i, 46891i), 3494i));

var<private> global2: vec4<u32>;

var<private> global3: bool = true;

var<private> global4: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = global2.x;
    var_0 = global2.x;
    let var_1 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(-10311i, -8571i, 14435i), ~(~firstTrailingBit(vec3<i32>(-12558i, -15271i, 5267i))));
    global3 = true;
    global0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a) - _wgslsmith_f_op_f32(floor(3068f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(479f * 1312f) + _wgslsmith_f_op_f32(arg_0.x - global4.a)))), -685f));
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, abs(~global2.x)), 7u)];
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> bool {
    var var_0 = false;
    let var_1 = Struct_3(-422f);
    let var_2 = arg_0.a;
    let var_3 = !vec3<bool>(any(func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-357f, -291f)))).b.xy), _wgslsmith_f_op_f32(step(-275f, _wgslsmith_f_op_f32(global0.a * -283f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a)) + var_1.a), true);
    global2 = _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(global2.x, _wgslsmith_add_u32(75801u, u_input.a) ^ select(u_input.a, 30199u, false), _wgslsmith_add_u32(u_input.a, 39422u), ~max(56046u, u_input.a))), _wgslsmith_clamp_vec4_u32(min(countOneBits(vec4<u32>(4294967295u, u_input.b.x, 0u, 15991u)), countOneBits(countOneBits(vec4<u32>(71101u, u_input.a, 214u, global2.x)))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, 44075u, 16060u, 21122u), vec4<u32>(1u, global2.x, global2.x, u_input.b.x))), min(~vec4<u32>(67750u, u_input.b.x, 1u, global2.x), vec4<u32>(global2.x, u_input.b.x, 0u, global2.x)) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 4294967295u, 0u, global2.x), vec4<u32>(1u, global2.x, 1u, 1u)), _wgslsmith_mult_u32(u_input.a, global2.x), 26669u, reverseBits(u_input.b.x)) % vec4<u32>(32u))));
    return !(!any(var_3)) | arg_0.b.x;
}

fn func_1() -> Struct_4 {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4.a))), global0.a)));
    var_0 = Struct_2(var_0.a, select(var_0.b, vec3<bool>(true, var_0.b.x, any(!vec2<bool>(false, var_0.b.x))), func_3(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(global2.x, global2.x)), 7u)], _wgslsmith_add_vec4_i32(vec4<i32>(var_0.d, var_0.a, var_0.c.x, 1i), vec4<i32>(-1i, -1i, var_0.a, 19381i)) >> (firstLeadingBit(vec4<u32>(1u, u_input.a, global2.x, global2.x)) % vec4<u32>(32u)))), _wgslsmith_sub_vec2_i32(var_0.c, select(-(~var_0.c), ~vec2<i32>(-42569i, 2037i), vec2<bool>(true, var_0.b.x | var_0.b.x))), max(14607i, min(firstLeadingBit(var_0.d), i32(-1i) * -17884i) & _wgslsmith_sub_i32(var_0.d, -8532i & var_0.c.x)));
    let var_1 = global4.a;
    var var_2 = func_3(Struct_2(~(i32(-1i) * -var_0.d), !var_0.b, _wgslsmith_div_vec2_i32(var_0.c, _wgslsmith_clamp_vec2_i32(vec2<i32>(-14469i, var_0.c.x) << (vec2<u32>(global2.x, global2.x) % vec2<u32>(32u)), vec2<i32>(-30677i, var_0.d), ~vec2<i32>(var_0.d, 21010i))), -1i), -reverseBits(min(abs(vec4<i32>(26287i, -26673i, 11753i, -43198i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.c.x, 1i, var_0.d, var_0.d), vec4<i32>(-2147483647i, var_0.c.x, var_0.a, var_0.a), vec4<i32>(var_0.c.x, var_0.c.x, -12362i, var_0.d)))));
    let var_3 = select(vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global4.a, global4.a, true)) + 685f) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global0.a)))), any(!select(var_0.b.zy, vec2<bool>(true, var_0.b.x), vec2<bool>(var_0.b.x, true))), false), !(!select(!vec4<bool>(true, true, var_0.b.x, var_0.b.x), select(vec4<bool>(var_0.b.x, true, false, var_0.b.x), vec4<bool>(var_0.b.x, false, false, true), vec4<bool>(true, var_0.b.x, true, false)), !vec4<bool>(var_0.b.x, false, var_0.b.x, true))), !(u_input.a < (~52015u | (19044u >> (global2.x % 32u)))));
    return Struct_4(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global4.a)), global4.a)), global4.a, abs(vec3<i32>(_wgslsmith_mod_i32(i32(-1i) * -7929i, i32(-1i) * -5797i), _wgslsmith_mod_i32(var_0.a, var_0.a >> (11250u % 32u)), var_0.a)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: vec2<u32>) -> Struct_4 {
    let var_0 = vec4<bool>(true, false, any(select(select(func_2(vec2<f32>(global4.a, global4.a)).b.zy, select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(true, false), all(vec2<bool>(false, true)) && any(vec2<bool>(true, true)))), true);
    var var_1 = arg_0.c.xz;
    var var_2 = !(!vec3<bool>(select(func_2(arg_2.yy).b.x, all(var_0.yxw), func_2(arg_1.zz).b.x), var_0.x, !all(var_0.yw)));
    let var_3 = Struct_2(_wgslsmith_div_i32(func_2(arg_1.zx).c.x, var_1.x), func_2(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a + global4.a), arg_2.x, 203f == global0.a)), arg_2.x)).b, vec2<i32>(max(34620i, var_1.x), -1679i), _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, firstLeadingBit(19789i)), arg_0.c.x >> (~1u % 32u)) & abs(_wgslsmith_div_i32(~(-5117i), 25795i)));
    global4 = Struct_3(arg_2.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a, global4.a, -685f, -301f), vec4<f32>(global4.a, 980f, 572f, 1376f), vec4<bool>(true, false, false, true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1477f, global0.a, 1612f, -1564f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global4.a, 289f, 1996f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, global4.a, true)), 1153f, _wgslsmith_f_op_f32(-596f - global0.a), _wgslsmith_f_op_f32(global4.a - global0.a))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global4.a - 1250f))) * -496f), global0.a, _wgslsmith_f_op_f32(abs(1775f))), u_input.b.yz);
    var var_1 = var_0;
    let var_2 = ~abs(_wgslsmith_mod_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(30086i, -37281i, 2147483647i, -52509i), vec4<i32>(var_0.c.x, var_0.c.x, var_1.c.x, var_1.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, -34581i, var_1.c.x, var_0.c.x), vec4<i32>(var_1.c.x, var_0.c.x, -1i, var_0.c.x))));
    global3 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a.a, 723f), vec2<f32>(global4.a, -1362f), vec2<bool>(true, true)))))).b.x && (_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 11916u, u_input.a), u_input.b, select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), ~abs(vec3<u32>(u_input.a, global2.x, 1u))) >= ~(~(~0u)));
    var var_3 = select(global2.zzz, vec3<u32>(firstLeadingBit(1u), ~_wgslsmith_mult_u32(select(0u, u_input.b.x, false), 4294967295u), _wgslsmith_sub_u32(_wgslsmith_add_u32(~global2.x, _wgslsmith_add_u32(0u, u_input.b.x)), u_input.b.x)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-671f, var_0.b)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.b, var_0.b))))))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(abs((1u & var_3.x) ^ _wgslsmith_mod_u32(1u, var_3.x)), 0u), var_3.xy, _wgslsmith_add_i32(2147483647i | -var_0.c.x, 42780i), 26175u);
}

