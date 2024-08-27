struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<u32> = vec3<u32>(21894u, 51667u, 21805u);

var<private> global2: array<Struct_1, 5>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = ~_wgslsmith_div_u32(reverseBits(4294967295u), _wgslsmith_add_u32(u_input.c.x, abs(4294967295u))) > ~abs(arg_1.e.x);
    var var_1 = all(select(!select(arg_1.a.xy, !arg_1.a.yx, select(arg_1.a.yy, vec2<bool>(arg_0, true), false)), arg_1.a.xy, arg_0));
    var var_2 = select(vec4<bool>(false, true, false, any(!select(vec4<bool>(arg_1.b, true, arg_0, false), vec4<bool>(false, arg_0, true, false), vec4<bool>(false, false, true, false)))), vec4<bool>(arg_0, !any(select(arg_1.a, vec3<bool>(true, true, false), vec3<bool>(arg_0, false, arg_0))), all(vec2<bool>(true, true)), select(true, !all(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, false)), arg_0)), select(select(select(select(vec4<bool>(arg_0, arg_1.b, true, true), vec4<bool>(false, arg_0, arg_1.a.x, arg_0), vec4<bool>(arg_1.b, true, true, true)), !vec4<bool>(true, false, arg_1.b, true), arg_1.b), vec4<bool>(all(vec4<bool>(true, false, true, false)), all(arg_1.a.zy), !arg_1.b, !arg_1.b), select(!vec4<bool>(arg_1.b, arg_0, true, arg_0), select(vec4<bool>(false, false, false, true), vec4<bool>(arg_0, true, arg_1.a.x, true), false), select(vec4<bool>(true, arg_1.a.x, arg_1.b, arg_1.a.x), vec4<bool>(arg_1.a.x, false, false, arg_0), vec4<bool>(false, true, true, false)))), select(select(vec4<bool>(arg_1.b, arg_0, true, arg_0), vec4<bool>(arg_0, false, true, false), vec4<bool>(arg_0, arg_0, false, true)), select(!vec4<bool>(arg_0, true, arg_1.a.x, false), vec4<bool>(true, arg_1.b, arg_1.a.x, false), !arg_1.b), select(!vec4<bool>(arg_1.a.x, arg_0, arg_0, arg_1.b), vec4<bool>(arg_0, arg_1.b, false, false), true)), any(select(select(arg_1.a.yz, vec2<bool>(arg_0, true), arg_1.a.yy), arg_1.a.xz, select(vec2<bool>(false, arg_0), vec2<bool>(false, true), false)))));
    let var_3 = vec2<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(771f * -422f), _wgslsmith_f_op_f32(-319f * arg_1.d)), _wgslsmith_f_op_f32(max(arg_1.d, _wgslsmith_f_op_f32(sign(arg_1.d))))), _wgslsmith_f_op_f32(1058f + arg_1.d)));
    let var_4 = var_2.x;
    return select(arg_1.a, var_2.ywz, select(vec3<bool>(any(!vec4<bool>(true, false, false, arg_0)), any(!vec2<bool>(arg_0, arg_1.a.x)), any(select(arg_1.a.xx, vec2<bool>(arg_0, true), arg_0))), select(vec3<bool>(true, true, !arg_1.b), vec3<bool>(true, true, arg_0), vec3<bool>(all(vec3<bool>(true, var_2.x, var_2.x)), 64413i >= u_input.d.x, any(var_2.ywz))), var_2.zzz));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(func_3(_wgslsmith_dot_vec2_i32(u_input.a.yz, ~vec2<i32>(-31033i, u_input.b)) < u_input.a.x, arg_2), arg_0.b, arg_2.e.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-202f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d))), arg_2.d, true)), arg_0.e);
    global2 = array<Struct_1, 5>();
    global2 = array<Struct_1, 5>();
    global1 = select(arg_1.yzw, arg_1.zwz, vec3<bool>(select(true, true, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1594f)) + -1758f) != _wgslsmith_f_op_f32(min(arg_2.d, _wgslsmith_div_f32(arg_2.d, arg_2.d))), any(!(!vec4<bool>(arg_2.b, arg_2.a.x, false, arg_2.a.x)))));
    var var_1 = func_3(all(select(select(!vec4<bool>(true, true, arg_2.a.x, arg_2.b), !vec4<bool>(arg_0.b, false, false, arg_0.a.x), !vec4<bool>(false, var_0.a.x, false, true)), !select(vec4<bool>(arg_0.b, false, arg_0.a.x, arg_0.a.x), vec4<bool>(true, arg_0.b, arg_2.a.x, false), vec4<bool>(var_0.b, false, var_0.a.x, arg_2.a.x)), select(vec4<bool>(var_0.a.x, false, arg_0.b, arg_2.b), select(vec4<bool>(var_0.b, true, var_0.b, arg_0.b), vec4<bool>(true, var_0.b, false, var_0.b), vec4<bool>(false, false, true, false)), !vec4<bool>(false, var_0.a.x, false, arg_2.a.x)))), arg_0).yy;
    return func_3(var_1.x, Struct_1(vec3<bool>(!(1i > u_input.d.x), var_0.a.x, select(var_1.x, false, !var_0.b)), _wgslsmith_f_op_f32(-329f * _wgslsmith_f_op_f32(trunc(-760f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d)), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * -351f), reverseBits(_wgslsmith_mod_vec2_u32(~arg_0.e, _wgslsmith_clamp_vec2_u32(global1.zx, arg_2.e, var_0.e)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: u32, arg_3: vec2<i32>) -> f32 {
    global0 = 11617i;
    let var_0 = Struct_1(func_2(global2[_wgslsmith_index_u32(1u, 5u)], ~(~vec4<u32>(1u, 4294967295u, global1.x, 1u)), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), true, ~select(global1.x, global1.x, true), arg_0.x, abs(_wgslsmith_sub_vec2_u32(global1.yy, global1.xy)))), arg_0.x <= _wgslsmith_f_op_f32(arg_0.x * arg_0.x), 1u, 1000f, firstTrailingBit(vec2<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, arg_2), vec2<u32>(global1.x, global1.x))) | ~vec2<u32>(4294967295u, 59450u)));
    global2 = array<Struct_1, 5>();
    global0 = _wgslsmith_mult_i32(-abs(arg_3.x), arg_3.x);
    global0 = -firstTrailingBit(arg_1.x) ^ countOneBits(firstLeadingBit(1i));
    return arg_0.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_1.a.zz;
    let var_1 = arg_2;
    var var_2 = arg_2;
    let var_3 = var_2.a.x || (_wgslsmith_f_op_f32(step(909f, var_2.d)) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(339f, arg_2.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) * -700f))));
    var var_4 = ~firstTrailingBit(vec4<i32>(arg_0.x, _wgslsmith_clamp_i32(u_input.d.x & -2147483647i, u_input.d.x ^ u_input.a.x, ~28479i), -(~u_input.b), -42230i));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    global2 = array<Struct_1, 5>();
    global0 = ~(0i ^ _wgslsmith_add_i32(-41870i << ((4294967295u ^ arg_0.c) % 32u), _wgslsmith_dot_vec3_i32(countOneBits(u_input.a), vec3<i32>(u_input.a.x, 20178i, 2147483647i))));
    global1 = countOneBits(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.e, arg_0.e), firstTrailingBit(52612u), _wgslsmith_mult_u32(arg_0.e.x, arg_0.c))), ~vec3<u32>(arg_1.e.x | global1.x, 41409u, global1.x), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(global1.x, u_input.c.x, 30093u)), vec3<u32>(1u, arg_1.e.x, max(arg_1.c, 0u)))));
    return !vec3<bool>(!func_4(u_input.d, arg_0, func_4(vec2<i32>(u_input.d.x, 1i), arg_0, Struct_1(arg_0.a, true, 22014u, arg_0.d, vec2<u32>(1u, arg_1.c)))).b, any(vec3<bool>(func_3(true, arg_1).x, arg_0.d == 528f, arg_0.b)), select(func_3(false, global2[_wgslsmith_index_u32(72029u, 5u)]).x, func_4(u_input.d, arg_1, arg_1).b & !arg_1.b, arg_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_5(func_4(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(u_input.d.x, u_input.d.x)), abs(u_input.a.zy)), Struct_1(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), true, global1.x, _wgslsmith_f_op_f32(func_1(vec4<f32>(-1000f, -744f, 570f, -981f), vec2<i32>(u_input.a.x, u_input.b), 0u, vec2<i32>(u_input.b, u_input.b))), ~u_input.c), Struct_1(vec3<bool>(true, true, false), true, ~15857u, _wgslsmith_f_op_f32(-1000f * 970f), _wgslsmith_clamp_vec2_u32(vec2<u32>(52477u, 11868u), u_input.c, global1.xy))), Struct_1(vec3<bool>(all(vec2<bool>(false, false)), true, true), func_2(global2[_wgslsmith_index_u32(global1.x, 5u)], vec4<u32>(global1.x, u_input.c.x, global1.x, u_input.c.x) << (vec4<u32>(u_input.c.x, global1.x, 34293u, 1u) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(min(global1.x, 0u), 5u)]).x, global1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(708f * -790f), -523f, true)), max(vec2<u32>(59400u, u_input.c.x), vec2<u32>(46111u, global1.x)))), true, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, global1.x, global1.x), ~vec4<u32>(global1.x, 0u, 9120u, 1u)), ~(~global1.x), global1.x) >> (~(~_wgslsmith_div_u32(global1.x, u_input.c.x)) % 32u), _wgslsmith_f_op_f32(floor(-1624f)), select(~(vec2<u32>(1u, u_input.c.x) & ~vec2<u32>(global1.x, 4294967295u)), global1.xy, vec2<bool>(true, true)));
    let var_1 = u_input.a;
    var var_2 = func_3(any(vec4<bool>(all(vec4<bool>(false, var_0.b, var_0.b, var_0.b)), -2147483647i < abs(u_input.b), var_0.b, var_0.a.x && all(var_0.a))), Struct_1(!var_0.a, all(vec3<bool>(true, true, true)), min(1u, var_0.e.x), _wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(func_4(u_input.a.zx, global2[_wgslsmith_index_u32(var_0.e.x, 5u)], Struct_1(var_0.a, var_0.a.x, u_input.c.x, 847f, global1.xy)).d * 1406f)), (abs(var_0.e) >> (select(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(0u, 4294967295u), var_0.a.yy) % vec2<u32>(32u))) & select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 23447u), vec2<u32>(var_0.c, 116340u)), vec2<u32>(1u, global1.x), var_0.a.zx))).zx;
    global2 = array<Struct_1, 5>();
    let var_3 = func_4(_wgslsmith_sub_vec2_i32(-(~firstTrailingBit(vec2<i32>(var_1.x, var_1.x))), ~(~var_1.zx)), func_4(_wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.d), ~_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, var_1.x), var_1.zy)), Struct_1(select(func_4(var_1.yz, Struct_1(vec3<bool>(var_0.a.x, var_2.x, true), true, 1875u, 1000f, u_input.c), Struct_1(vec3<bool>(true, var_2.x, false), var_2.x, var_0.c, var_0.d, global1.zy)).a, var_0.a, var_0.a.x), all(!vec4<bool>(false, var_2.x, false, true)), 4294967295u, -703f, ~vec2<u32>(global1.x, var_0.e.x)), var_0), global2[_wgslsmith_index_u32(~var_0.e.x & ~1u, 5u)]);
    let var_4 = u_input.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.d))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_3.d, _wgslsmith_f_op_f32(-var_0.d))), -2287f)))), var_4.x);
}

