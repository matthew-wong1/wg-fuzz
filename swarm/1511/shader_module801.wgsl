struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 8>;

var<private> global1: vec3<u32>;

var<private> global2: Struct_2;

var<private> global3: array<vec4<i32>, 25>;

var<private> global4: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.e.x)), _wgslsmith_div_f32(global2.b.e.x, global2.a.e.x), 817f));
    let var_1 = _wgslsmith_mod_vec2_i32(-vec2<i32>(global2.b.d.x, u_input.b & 37223i), vec2<i32>(1i, abs(countOneBits(global2.b.c << (u_input.c % 32u)))));
    var var_2 = global2.b;
    let var_3 = var_2.a;
    var_2 = global2.a;
    return 17050u << (min(global1.x, ~23086u) % 32u);
}

fn func_2() -> Struct_2 {
    let var_0 = ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, u_input.b) ^ max(global2.a.d, global2.b.d), vec3<i32>(1i, _wgslsmith_div_i32(global2.b.d.x, global2.b.d.x), -global2.a.c)), _wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(firstLeadingBit(1u), 25u)], global3[_wgslsmith_index_u32(4294967295u, 25u)]));
    global3 = array<vec4<i32>, 25>();
    global2 = Struct_2(Struct_1(!(select(global2.b.c, var_0, true) <= -1i), countOneBits(vec2<u32>(1u, 4294967295u)), firstTrailingBit(countOneBits(9379i)), vec3<i32>(_wgslsmith_add_i32(global2.a.d.x, -10942i), -var_0, var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(global2.a.e.x, global2.a.e.x, 613f), global2.b.e), _wgslsmith_f_op_vec3_f32(-global2.b.e))))), global2.a);
    let var_1 = true;
    global4 = ~global1.x & ~func_3();
    return Struct_2(global2.b, global2.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_1;
    global0 = array<vec2<bool>, 8>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-190f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(255f, -164f)), var_0.a.e.x)))), 1920f, -452f, _wgslsmith_f_op_f32(arg_3.b.e.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_3.a.e.x) + _wgslsmith_f_op_f32(abs(-1124f))))));
    global1 = ~(~(abs(vec3<u32>(arg_2, 44956u, 22942u)) << (~(~u_input.d.zxx) % vec3<u32>(32u))));
    var var_2 = -max(reverseBits(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-30815i, 20952i, var_0.a.c, 1i), global3[_wgslsmith_index_u32(4294967295u, 25u)]))), global3[_wgslsmith_index_u32(~(firstTrailingBit(var_0.a.b.x) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), global1.xx)), 25u)]);
    return Struct_1(any(vec3<bool>(all(vec2<bool>(global2.a.a, global2.a.a)), 18077u >= arg_3.a.b.x, false)) & (func_3() > global2.b.b.x), var_0.a.b, 1i, abs(global2.b.d), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_1.xwy, vec3<f32>(arg_1.a.e.x, var_0.a.e.x, arg_0.a.e.x))))))));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_1 {
    global4 = 1u;
    let var_0 = select(global2.b.d.yx, global2.a.d.zz, vec2<bool>(global2.b.a, true));
    global3 = array<vec4<i32>, 25>();
    global0 = array<vec2<bool>, 8>();
    let var_1 = all(vec2<bool>(!(!global2.b.a), any(vec3<bool>(true, global2.a.a, true))));
    return func_4(func_2(), Struct_3(func_2().b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1004f, 779f, arg_0), global2.a.e, vec3<bool>(var_1, global2.b.a, var_1))))) * vec3<f32>(-387f, 119f, 1000f))), global2.b.b.x, func_2());
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<i32>) -> vec3<f32> {
    global2 = arg_1;
    var var_0 = _wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, firstTrailingBit(-2147483647i), -(i32(-1i) * -19793i), min(arg_1.b.d.x, 2147483647i | arg_0.c)), -reverseBits(vec4<i32>(global2.a.c, 23878i, u_input.b, arg_3.x)) & vec4<i32>(1i, 0i, arg_1.b.c, -2147483647i));
    global1 = ~vec3<u32>(~global2.b.b.x, u_input.d.x, u_input.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-397f + _wgslsmith_f_op_f32(-1147f - arg_0.e.x))), _wgslsmith_f_op_f32(arg_1.a.e.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f) - _wgslsmith_f_op_f32(trunc(-848f))))));
    let var_2 = arg_2;
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), var_1.x)));
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> Struct_2 {
    global2 = Struct_2(func_1(arg_3.e.x, ~((arg_2.a.d | vec3<i32>(arg_2.a.d.x, 17358i, 0i)) ^ _wgslsmith_mod_vec3_i32(global2.b.d, arg_2.a.d))), func_1(-948f, arg_1.b.d));
    let var_0 = Struct_1(!global2.b.a, select(u_input.d.xw, arg_2.a.b, func_1(arg_0, global2.b.d).a), min(_wgslsmith_dot_vec2_i32(arg_2.a.d.zy, arg_2.a.d.zz), arg_3.d.x), vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(23658i, arg_2.a.d.x, 1i, -2147483647i), vec4<i32>(-9902i, 1i, arg_3.c, i32(-1i) * -27271i)), _wgslsmith_mult_i32(0i >> (~global1.x % 32u), i32(-1i) * -43760i), func_4(Struct_2(Struct_1(true, arg_1.a.b, -26504i, vec3<i32>(arg_1.b.c, u_input.b, arg_3.c), arg_1.b.e), global2.a), Struct_3(arg_1.b, _wgslsmith_f_op_vec3_f32(-arg_3.e)), ~(~26647u), Struct_2(func_2().b, arg_3)).d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(922f, -1000f, arg_2.a.e.x)) * vec3<f32>(arg_2.b.x, arg_3.e.x, 714f))))));
    var var_1 = arg_2;
    let var_2 = func_2().b.b.x;
    var var_3 = arg_2;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(622f)), -265f, true)) - global2.b.e.x), global2.b.e.x), Struct_2(Struct_1(false, _wgslsmith_mod_vec2_u32(global2.b.b, vec2<u32>(0u, 0u)) | vec2<u32>(global2.a.b.x, 4294967295u), u_input.b, _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(global2.a.d, global2.b.d, global2.b.d), global2.a.d, vec3<i32>(u_input.b, u_input.b, 43178i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.b.e - global2.b.e) * global2.a.e)), Struct_1(any(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.b.b.x, global1.x), 8u)]), (u_input.a ^ u_input.d.wz) << (_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(1u, 1u)) % vec2<u32>(32u)), min(-2147483647i, -62724i), global2.b.d, global2.a.e)), Struct_3(Struct_1(true, ~vec2<u32>(24652u, global1.x), _wgslsmith_mult_i32(-2147483647i, 1i), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(7246i, -1i, -37954i), global2.a.d), -vec3<i32>(u_input.b, -45653i, 18432i), vec3<i32>(global2.b.d.x, 0i, u_input.b)), global2.a.e), _wgslsmith_f_op_vec3_f32(func_5(Struct_1(global2.b.a, abs(vec2<u32>(1u, 1u)), u_input.b, ~vec3<i32>(global2.b.d.x, global2.b.c, -2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.e.x, global2.a.e.x, global2.b.e.x))), Struct_2(func_1(global2.b.e.x, vec3<i32>(-67441i, global2.b.c, u_input.b)), Struct_1(false, vec2<u32>(1u, global1.x), u_input.b, global2.a.d, vec3<f32>(823f, global2.b.e.x, 1029f))), func_2(), global2.b.d))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.e.x) + _wgslsmith_f_op_f32(2199f - global2.a.e.x)) <= 2218f, vec2<u32>(1u, 47464u), global2.b.d.x, -global2.a.d ^ (_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, global2.a.d.x, u_input.b), vec3<i32>(u_input.b, u_input.b, 0i)) >> (~vec3<u32>(28058u, 20840u, global1.x) % vec3<u32>(32u))), global2.a.e));
    global1 = max(vec3<u32>(u_input.c, global1.x, (global2.a.b.x & 0u) & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, global1.x), vec3<u32>(101180u, u_input.c, 39386u))) ^ u_input.d.xzw, vec3<u32>(39530u, _wgslsmith_add_u32(abs(_wgslsmith_div_u32(11688u, global1.x)), 58722u), ~1u));
    var var_1 = vec3<f32>(func_2().a.e.x, -682f, func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.a.e.x)))) * -763f), var_0, Struct_3(Struct_1(global2.a.a, var_0.b.b, var_0.a.d.x, vec3<i32>(0i, 725i, global2.a.d.x), _wgslsmith_div_vec3_f32(vec3<f32>(-318f, -1000f, 860f), vec3<f32>(var_0.a.e.x, -1000f, var_0.b.e.x))), func_2().a.e), func_2().b).b.e.x);
    global0 = array<vec2<bool>, 8>();
    let var_2 = Struct_3(var_0.a, func_6(var_1.x, var_0, Struct_3(var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -1352f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.e.x, -387f, -1000f)))), Struct_1(true, _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, var_0.a.b.x), select(global2.a.b, u_input.d.zz, global2.a.a)), -19298i, abs(select(vec3<i32>(var_0.b.d.x, var_0.a.c, global2.a.d.x), vec3<i32>(global2.a.d.x, global2.b.c, u_input.b), vec3<bool>(global2.a.a, true, true))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.a.e), global2.b.e, !vec3<bool>(false, true, global2.a.a))))).b.e);
    let x = u_input.a;
    s_output = StorageBuffer(-1901f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, global2.b.e.x, _wgslsmith_f_op_f32(548f - 139f), 315f)));
}

