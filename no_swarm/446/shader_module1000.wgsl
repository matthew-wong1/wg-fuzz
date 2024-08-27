struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 3>;

var<private> global2: Struct_2 = Struct_2(Struct_1(false, 2473f, 535f, i32(-2147483648)), vec3<bool>(true, true, false), false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec4<i32> {
    global2 = Struct_2(global2.a, vec3<bool>(true & ((u_input.c != u_input.c) || all(vec4<bool>(global0.x, global2.a.a, false, true))), -select(-2147483647i, -2147483647i, false) != -(~global2.a.d), all(vec3<bool>(any(vec4<bool>(global0.x, true, global0.x, global2.d)), all(global2.b), true))), 8457u > _wgslsmith_mult_u32(firstLeadingBit(firstLeadingBit(u_input.c)), 4294967295u), !global2.d);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.a.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global2.a.c))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-611f, -990f))))) + vec2<f32>(-683f, _wgslsmith_f_op_f32(min(307f, -1302f))))));
    global2 = Struct_2(global2.a, select(select(vec3<bool>(true, false, global2.b.x), vec3<bool>(all(vec2<bool>(global0.x, global0.x)), global0.x, global0.x), global2.b), vec3<bool>(~u_input.c != _wgslsmith_add_u32(4294967295u, u_input.c), !global0.x, true), vec3<bool>(global2.d, !global0.x, any(vec4<bool>(false, true, global0.x, false)) | global0.x)), all(vec4<bool>(any(!vec4<bool>(false, false, global0.x, global0.x)), any(!global2.b.zy), global2.d, any(select(global2.b.yz, vec2<bool>(global2.c, true), vec2<bool>(false, true))))), true);
    var var_1 = global2.a.d;
    var var_2 = _wgslsmith_clamp_vec2_i32(~(~_wgslsmith_add_vec2_i32(vec2<i32>(11158i, global2.a.d) ^ vec2<i32>(-1i, 12193i), _wgslsmith_add_vec2_i32(vec2<i32>(-32503i, global2.a.d), vec2<i32>(-18330i, 7112i)))), firstLeadingBit(~vec2<i32>(28395i, 1i)), abs(firstTrailingBit(vec2<i32>(i32(-1i) * -26167i, -2147483647i << (0u % 32u)))));
    return abs(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, abs(global2.a.d), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, global2.a.d, -39439i, global2.a.d), vec4<i32>(-59658i, -1i, var_2.x, 13719i)) ^ ~var_2.x, i32(-1i) * -40331i), vec4<i32>(_wgslsmith_mod_i32(0i, 1i) & _wgslsmith_sub_i32(global2.a.d, global2.a.d), -13984i, 37944i, -2147483647i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<bool>, arg_3: vec4<i32>) -> vec3<bool> {
    var var_0 = global2.a;
    var var_1 = arg_3.ww;
    global0 = !(!select(select(select(vec3<bool>(global0.x, global2.c, arg_2.x), global2.b, vec3<bool>(arg_2.x, false, true)), global2.b, true), global2.b, select(global2.b, vec3<bool>(true, true, true), global0.x)));
    let var_2 = vec3<u32>(_wgslsmith_mult_u32(72072u, ~(~u_input.c)), 64902u, ~1u);
    let var_3 = ~vec3<u32>(u_input.c, abs(_wgslsmith_mod_u32(~9792u, 43889u)), 4294967295u);
    return vec3<bool>(true == !any(!global0.yy), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-863f, _wgslsmith_f_op_f32(min(var_0.b, 312f)))))) > 214f, global2.d);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = func_4(~vec2<i32>(global2.a.d, ~(-u_input.b)), arg_2.d, !vec2<bool>(global2.a.a & any(vec3<bool>(true, false, true)), false), func_3());
    var var_0 = max(arg_2.d, -_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.a, global2.a.d), arg_2.d << (1u % 32u)), ~(-vec2<i32>(global2.a.d, 6969i))));
    let var_1 = arg_2;
    var var_2 = -1i;
    var var_3 = Struct_1(any(!vec4<bool>(true, false, false, all(global2.b.xy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.c * arg_2.c), -255f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.b + arg_3.c)), -568f))), arg_2.b, -2147483647i);
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    var var_0 = arg_2.a.d;
    var var_1 = select(!global2.b, arg_2.b, func_4(vec2<i32>(~(-arg_0.a.d), _wgslsmith_mult_i32(0i, -arg_1.x)), reverseBits(-28135i), vec2<bool>(true, true), vec4<i32>(arg_1.x, global2.a.d, arg_2.a.d, -func_2(u_input.b, 80295u, global2.a, Struct_1(arg_2.c, arg_0.a.b, global2.a.b, -22010i)).d)).x);
    var var_2 = _wgslsmith_mult_u32(u_input.c, u_input.c);
    var var_3 = arg_2;
    global1 = array<Struct_1, 3>();
    return any(global0.zx);
}

fn func_1(arg_0: u32) -> StorageBuffer {
    var var_0 = !func_5(Struct_2(func_2(min(-2147483647i, -1i), max(4294967295u, u_input.c), global2.a, Struct_1(global2.d, 616f, global2.a.b, 67257i)), global2.b, u_input.c > (1u << (arg_0 % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.d, global2.a.d, 1i), vec3<i32>(-1i, global2.a.d, -3315i)) < abs(-1i)), func_3().xyx, Struct_2(global2.a, vec3<bool>(false, true, all(vec3<bool>(global0.x, false, global2.c))), all(vec3<bool>(false, false, global2.c)), false));
    let var_1 = func_2(3156i, arg_0, global2.a, Struct_1(any(select(global2.b, global2.b, select(vec3<bool>(true, global2.c, false), global2.b, true))), _wgslsmith_f_op_f32(-1625f - _wgslsmith_f_op_f32(min(-810f, _wgslsmith_f_op_f32(f32(-1f) * -111f)))), 242f, _wgslsmith_add_i32(_wgslsmith_clamp_i32(global2.a.d, min(-1i, u_input.a), i32(-1i) * -29277i), 15297i)));
    var var_2 = true;
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_sub_u32(~arg_0, arg_0), u_input.c >> (~1u % 32u))), 3u)], vec3<bool>(true, var_1.c < var_1.c, func_5(Struct_2(Struct_1(global2.a.a, var_1.b, var_1.b, var_1.d), vec3<bool>(var_1.a, global2.d, global0.x), true, false), vec3<i32>(24272i, -1i, -25352i) << ((vec3<u32>(43989u, 0u, 35069u) >> (vec3<u32>(1u, arg_0, 67228u) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_2(global2.a, global2.b, false, func_2(2147483647i, u_input.c, Struct_1(global2.c, -471f, 169f, 0i), Struct_1(true, -583f, -1000f, 2147483647i)).a))), global0.x, select(false, global2.d, !select(var_1.a | false, true, 0u > u_input.c)));
    var var_4 = select(vec4<bool>(var_3.c, false, false, var_3.b.x), !vec4<bool>(select(false, true, false), all(vec3<bool>(var_1.a, var_3.a.a, true)), !global0.x, var_3.c), !vec4<bool>(false, var_3.a.a, global2.b.x, false));
    return StorageBuffer(~(~arg_0), abs(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 1i, u_input.a, global2.a.d), -vec4<i32>(var_1.d, global2.a.d, u_input.b, -2147483647i)), func_3())), ~(~select(vec3<u32>(1u, u_input.c, 1u), vec3<u32>(u_input.c, 4294967295u, u_input.c), false) & vec3<u32>(u_input.c, countOneBits(arg_0), arg_0)), vec2<u32>(_wgslsmith_mult_u32(arg_0, _wgslsmith_add_u32(0u, abs(90797u))), min(~_wgslsmith_clamp_u32(arg_0, 4294967295u, u_input.c), _wgslsmith_div_u32(~41655u, max(arg_0, 122008u)))), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~19368u);
}

