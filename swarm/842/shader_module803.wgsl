struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(-14917i, 2147483647i, -13671i, -27777i, 20753i, 1i, -15661i, -36755i, 1i, 30250i, -16875i, 2147483647i, -18205i, i32(-2147483648), -1i, -34148i, 29983i, 1i, 47826i, 1i, 0i, 18074i, -43748i);

var<private> global1: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec2<bool>(false, true), 18293i, vec2<f32>(335f, -239f), Struct_2(0i, 17172i)), Struct_3(vec2<bool>(false, false), -1i, vec2<f32>(887f, -403f), Struct_2(2147483647i, 9493i)), Struct_3(vec2<bool>(false, false), 22881i, vec2<f32>(-401f, -1000f), Struct_2(8550i, -18115i)), Struct_3(vec2<bool>(true, true), 22645i, vec2<f32>(1098f, 706f), Struct_2(-1i, 17019i)), Struct_3(vec2<bool>(false, true), -26017i, vec2<f32>(-1193f, -792f), Struct_2(7207i, 37096i)), Struct_3(vec2<bool>(true, true), 0i, vec2<f32>(1000f, 527f), Struct_2(2147483647i, -17254i)), Struct_3(vec2<bool>(true, true), 1i, vec2<f32>(151f, -1406f), Struct_2(-25962i, -1i)), Struct_3(vec2<bool>(false, true), -28994i, vec2<f32>(1079f, 356f), Struct_2(-1i, -1i)), Struct_3(vec2<bool>(false, true), 1i, vec2<f32>(-1000f, -1717f), Struct_2(1i, i32(-2147483648))), Struct_3(vec2<bool>(false, true), -22605i, vec2<f32>(1054f, -1149f), Struct_2(0i, -6789i)), Struct_3(vec2<bool>(true, true), -1i, vec2<f32>(-208f, 303f), Struct_2(2147483647i, 2147483647i)));

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<i32>) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u | _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.e, u_input.a.x, 36715u), vec4<u32>(u_input.e, 45102u, u_input.a.x, u_input.e) & vec4<u32>(42651u, u_input.e, 4294967295u, u_input.a.x)), 33485u, max(8319u << ((u_input.a.x ^ u_input.a.x) % 32u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.e, u_input.a.x, u_input.e)), vec3<u32>(u_input.e, u_input.a.x, 4294967295u) | vec3<u32>(25365u, 0u, 4294967295u)))), firstTrailingBit(u_input.e)), 11u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(arg_0.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(arg_0.c))))), vec4<f32>(2671f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)) - 2492f), var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x))));
    let var_2 = Struct_3(select(select(!select(var_0.a, var_0.a, var_0.a), var_0.a, select(vec2<bool>(arg_0.a, var_0.a.x), vec2<bool>(false, var_0.a.x), var_0.a.x)), var_0.a, vec2<bool>(select(any(vec3<bool>(arg_0.a, var_0.a.x, var_0.a.x)), 704f != var_0.c.x, true), any(select(var_0.a, var_0.a, var_0.a.x)))), ~select(2147483647i, 22850i, all(!vec4<bool>(arg_0.a, var_0.a.x, false, false))), var_1.wy, var_0.d);
    var var_3 = Struct_1(any(vec2<bool>(all(select(vec3<bool>(var_2.a.x, false, true), vec3<bool>(arg_0.a, true, true), vec3<bool>(true, true, false))), arg_0.a)), vec3<f32>(795f, 452f, _wgslsmith_f_op_f32(round(var_0.c.x))), arg_0.c);
    var var_4 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(~1u, 23u)], -15908i), arg_1 ^ reverseBits(u_input.d)), _wgslsmith_clamp_i32(i32(-1i) * -1i, 2147483647i, var_0.b));
    return countOneBits(~firstTrailingBit(-_wgslsmith_mod_i32(-1i, global2.b)));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_2(global2.a & func_3(Struct_1(any(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1033f, -1541f, 396f) + vec3<f32>(-460f, 1437f, 1139f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-305f, 478f, 1303f, 460f) - vec4<f32>(835f, 283f, 484f, 742f))), -arg_1.yy, arg_1 & ~arg_1), _wgslsmith_sub_i32(-2147483647i, -6327i));
    global1 = array<Struct_3, 11>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -860f));
    var var_2 = 32739u;
    global2 = var_0;
    return select(select(vec4<bool>(!any(vec3<bool>(true, false, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), _wgslsmith_f_op_f32(-801f - var_1) > _wgslsmith_div_f32(var_1, 554f), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true)), vec4<bool>(false, !(var_1 >= -276f), any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), false)), vec4<bool>(all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)))), !(arg_1.x >= ~(-45839i)), !(!(global2.a <= global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), false), false);
}

fn func_1() -> Struct_3 {
    var var_0 = !vec4<bool>(true, u_input.a.x > _wgslsmith_dot_vec3_u32(vec3<u32>(30801u, u_input.a.x, 0u), vec3<u32>(0u, u_input.e, u_input.a.x) >> (vec3<u32>(u_input.e, 290u, 0u) % vec3<u32>(32u))), true, !all(vec3<bool>(true, true, true)));
    var_0 = !select(!func_2(global2.a >> (1u % 32u), select(vec3<i32>(1i, 13730i, 1i), vec3<i32>(u_input.b, global2.a, global0[_wgslsmith_index_u32(0u, 23u)]), var_0.x)), vec4<bool>(!any(var_0.zx), _wgslsmith_dot_vec2_i32(vec2<i32>(-22433i, u_input.d.x), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], -2729i)) <= 1i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)] == -66541i, true), !select(!vec4<bool>(var_0.x, false, true, var_0.x), func_2(0i, vec3<i32>(u_input.c, 0i, global0[_wgslsmith_index_u32(0u, 23u)])), select(var_0.x, var_0.x, false)));
    global2 = Struct_2(-4949i << (0u % 32u), ~_wgslsmith_add_i32(_wgslsmith_add_i32(firstTrailingBit(97260i), abs(u_input.d.x)), u_input.c));
    let var_1 = true;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1041f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(421f)))) * _wgslsmith_f_op_f32(f32(-1f) * -126f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-195f * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(108f))))));
    return global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e, min(_wgslsmith_mod_u32(~max(u_input.a.x, u_input.a.x), u_input.a.x), 4294967295u)), 11u)];
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_2 {
    global2 = func_1().d;
    let var_0 = Struct_2((global2.b ^ _wgslsmith_dot_vec3_i32(-vec3<i32>(global2.a, -1i, global0[_wgslsmith_index_u32(0u, 23u)]), vec3<i32>(global2.a, -27588i, global2.b))) >> (u_input.e % 32u), func_1().b);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(390f - -1152f), -945f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-628f, -1000f, arg_1.a.x)))))));
    var var_2 = ~vec3<i32>(20449i, global2.a, _wgslsmith_add_i32(-22393i, _wgslsmith_mult_i32(global2.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-27004i, arg_1.d.a, u_input.c), vec3<i32>(-2147483647i, global2.a, arg_1.d.b)))));
    var var_3 = _wgslsmith_f_op_f32(188f - 2345f);
    return func_1().d;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_mod_i32(reverseBits(arg_2.a), min(global2.b, arg_0.d.a & global2.b) ^ (~(-u_input.b) & (global2.b ^ -arg_0.b)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1510f, -1043f) - -2123f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.c.x))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, -807f) - _wgslsmith_f_op_vec2_f32(select(arg_0.c, arg_0.c, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, -823f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.c.x, arg_0.c.x))))))));
    var var_2 = func_4(~(~510u), arg_0);
    global2 = Struct_2(var_0, _wgslsmith_dot_vec3_i32(countOneBits(firstLeadingBit(~vec3<i32>(var_0, -2147483647i, global2.b))), -(~(-vec3<i32>(arg_2.a, -7588i, -30562i)))));
    let var_3 = select(~func_1().b > (-max(arg_2.a, 63344i) >> (u_input.e % 32u)), all(vec2<bool>(select(arg_1.x, false, true), !arg_1.x)), func_1().a.x);
    return vec3<u32>(u_input.a.x, u_input.a.x, reverseBits(~(~u_input.a.x))) << (max(max(vec3<u32>(0u, u_input.e, 4294967295u), ~vec3<u32>(u_input.a.x, 0u, u_input.a.x)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.e, u_input.e) & vec3<u32>(u_input.e, u_input.a.x, u_input.a.x), vec3<u32>(61778u, u_input.a.x, 28159u), vec3<u32>(u_input.e, u_input.e, u_input.e)), max(select(firstLeadingBit(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), firstLeadingBit(vec3<u32>(u_input.a.x, u_input.e, 0u)), arg_0.c.x != var_1.x), firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(50309u, u_input.e, u_input.a.x))))) % vec3<u32>(32u));
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(~7429u, 11u)];
    global2 = var_0.d;
    let var_1 = Struct_3(var_0.a, 2147483647i, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_1().c.x + _wgslsmith_div_f32(1000f, var_0.c.x)), _wgslsmith_div_f32(var_0.c.x, var_0.c.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c * var_0.c) * _wgslsmith_f_op_vec2_f32(step(var_0.c, vec2<f32>(var_0.c.x, -676f)))))), all(!(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))))), Struct_2(_wgslsmith_clamp_i32(select(i32(-1i) * -1i, global2.a, var_0.a.x), select(-global0[_wgslsmith_index_u32(146295u, 23u)], ~0i, true), -2147483647i), u_input.b));
    global0 = array<i32, 23>();
    global2 = var_1.d;
    return Struct_2(var_0.b, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 11>();
    global2 = Struct_2(global2.a, _wgslsmith_clamp_i32(-reverseBits(-1i), global0[_wgslsmith_index_u32(u_input.e, 23u)], firstTrailingBit(max(u_input.d.x, -u_input.d.x))));
    var var_0 = func_6(-67944i, _wgslsmith_dot_vec3_u32(vec3<u32>(abs(48444u) & ~u_input.e, ~(~u_input.a.x), abs(u_input.e)), func_5(global1[_wgslsmith_index_u32(~96817u, 11u)], vec3<bool>(true, true, true), func_4(59116u, func_1()))), 0u, vec2<u32>(~(~(u_input.e >> (u_input.a.x % 32u))), max(0u, 4294967295u)));
    let var_1 = ~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 107645u), u_input.a.x << (0u % 32u)), _wgslsmith_sub_u32(u_input.e, u_input.a.x) & u_input.a.x), u_input.a);
    let var_2 = vec4<bool>(func_1().a.x, false, _wgslsmith_sub_u32(4294967295u, 1u) < (_wgslsmith_sub_u32(~u_input.e, u_input.a.x) | ~(~u_input.e)), func_2(var_0.b, vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 23u)] << (u_input.a.x % 32u), _wgslsmith_div_i32(0i, global2.a), -2147483647i)).x);
    let var_3 = vec3<bool>(select(all(select(func_2(u_input.c, vec3<i32>(global0[_wgslsmith_index_u32(u_input.e, 23u)], 6163i, 55583i)), vec4<bool>(var_2.x, var_2.x, false, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), func_1().a.x, 4294967295u > firstTrailingBit(35669u)), false, all(var_2.zyz));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), var_1, var_1)) ^ abs(~u_input.a), func_4(countOneBits(~max(u_input.e, 5182u)), func_1()).a, _wgslsmith_sub_vec4_u32(abs(reverseBits(vec4<u32>(1u, 3268u, 0u, 0u))), vec4<u32>(u_input.e, func_5(global1[_wgslsmith_index_u32(select(u_input.e, 25381u, var_3.x), 11u)], func_2(12899i, vec3<i32>(-2147483647i, 13035i, var_0.b)).zww, Struct_2(global0[_wgslsmith_index_u32(u_input.e, 23u)], 2147483647i)).x, 94996u, firstLeadingBit(~23355u))));
}

