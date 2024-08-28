struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
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

var<private> global0: array<bool, 17> = array<bool, 17>(false, true, true, true, false, false, false, true, false, true, true, false, false, false, true, false, true);

var<private> global1: Struct_1;

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global3: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: u32) -> i32 {
    let var_0 = arg_0;
    global0 = array<bool, 17>();
    let var_1 = vec2<i32>(~8433i, firstLeadingBit(~((global1.c.x | 2147483647i) ^ -global1.c.x)));
    global0 = array<bool, 17>();
    let var_2 = ~(~(~(~reverseBits(u_input.b))));
    return 1i;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> vec3<bool> {
    global0 = array<bool, 17>();
    global3 = arg_2.b;
    let var_0 = arg_2.b;
    let var_1 = Struct_2(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.c.x, global3.a, global3.a), vec3<i32>(global1.a, arg_3.b.a, arg_0))) << (global3.b.x % 32u), vec2<u32>(countOneBits(firstTrailingBit(70640u)) >> (_wgslsmith_add_u32(1u, 43726u) % 32u), abs(_wgslsmith_sub_u32(~u_input.c.x, 3468u & arg_3.b.b.x))));
    var var_2 = _wgslsmith_f_op_f32(-233f + 1f);
    return global2.zyz;
}

fn func_2() -> vec4<f32> {
    let var_0 = ~27442u;
    global2 = vec4<bool>(false, !global1.b.x, global2.x, global0[_wgslsmith_index_u32(var_0, 17u)]);
    let var_1 = select(!(!func_4(func_3(Struct_3(Struct_1(15235i, global1.b, global1.c, 4294967295u, -473f), Struct_2(global1.a, vec2<u32>(1u, 0u)), global0[_wgslsmith_index_u32(var_0, 17u)], Struct_1(global3.a, vec2<bool>(false, false), global1.c, 4294967295u, global1.e), global1.c), global1.e, global0[_wgslsmith_index_u32(var_0, 17u)], 51258u), true, Struct_3(Struct_1(1i, global2.wx, vec3<i32>(-1i, global1.a, global1.a), 0u, -343f), Struct_2(global3.a, vec2<u32>(0u, u_input.c.x)), false, Struct_1(global1.c.x, global1.b, vec3<i32>(global3.a, global3.a, global3.a), 25179u, -1200f), global1.c), Struct_3(Struct_1(57129i, vec2<bool>(false, global1.b.x), vec3<i32>(-18401i, -52531i, -32130i), global3.b.x, global1.e), Struct_2(global1.c.x, global3.b), global1.b.x, Struct_1(global3.a, global2.yw, global1.c, var_0, -769f), vec3<i32>(global3.a, global1.a, 2147483647i)))), global2.wwy, select(func_4(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, -5273i, 5828i), -vec3<i32>(global3.a, global1.a, global1.a)), any(!global2.yxy), Struct_3(Struct_1(2147483647i, vec2<bool>(global0[_wgslsmith_index_u32(var_0, 17u)], true), global1.c, 99944u, -1312f), Struct_2(-1i, global3.b), global2.x, Struct_1(global1.c.x, global2.xw, vec3<i32>(2228i, global3.a, global1.a), 0u, global1.e), global1.c), Struct_3(Struct_1(41458i, vec2<bool>(true, global2.x), vec3<i32>(global3.a, -26964i, 45166i), global1.d, global1.e), Struct_2(-2147483647i, global3.b), all(global2.zzx), Struct_1(-1i, global1.b, vec3<i32>(40750i, global3.a, global3.a), global1.d, -431f), vec3<i32>(global3.a, -24977i, -29915i) ^ global1.c)), global2.zzz, global2.xxy));
    global2 = !select(!select(!vec4<bool>(true, global2.x, true, true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 17u)], global2.x, true, false), global2.x), select(!(!vec4<bool>(global2.x, true, false, true)), select(select(vec4<bool>(false, global2.x, global2.x, true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(global3.b.x, 17u)], global2.x), vec4<bool>(false, true, global0[_wgslsmith_index_u32(global3.b.x, 17u)], false)), vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(global1.d, 17u)], var_1.x, true), var_1.x), !global2.x), !global1.b.x);
    global0 = array<bool, 17>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(447f, global1.e, global1.e, -1000f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.e, global1.e, 150f, global1.e))))), vec4<f32>(global1.e, _wgslsmith_f_op_f32(step(365f, global1.e)), -282f, _wgslsmith_f_op_f32(-1000f - global1.e))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-788f)), _wgslsmith_f_op_f32(global1.e - 1057f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-2213f, global1.e), _wgslsmith_f_op_f32(global1.e - 913f)), _wgslsmith_f_op_f32(global1.e + _wgslsmith_f_op_f32(min(-579f, -741f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1710f, global1.e) - -1011f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1423f, global1.e, 1475f, global1.e)) * vec4<f32>(global1.e, global1.e, 490f, global1.e)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-192f, 137f, -962f, global1.e)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(729f, 1995f, -1483f, global1.e) * vec4<f32>(global1.e, global1.e, 177f, global1.e)))), select(vec4<bool>(global0[_wgslsmith_index_u32(2759u, 17u)], any(global2.ww), true, global1.b.x), !(!vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)])), !all(global2.wxz)))));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e, global1.e, global1.e, global1.e))))), _wgslsmith_f_op_vec4_f32(func_2()))));
    var var_1 = select(vec4<bool>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-11241i, global1.a, global3.a, 14855i), vec4<i32>(-1i, 0i, global1.a, global3.a)), -2147483647i) == (global1.c.x ^ global3.a), true, true | any(vec4<bool>(global0[_wgslsmith_index_u32(12745u, 17u)], global0[_wgslsmith_index_u32(global3.b.x, 17u)], true, false)), false), vec4<bool>((global1.c.x <= _wgslsmith_clamp_i32(global3.a, 1i, global3.a)) && select(any(vec4<bool>(global1.b.x, global2.x, global0[_wgslsmith_index_u32(42282u, 17u)], global1.b.x)), global2.x, global2.x), any(vec3<bool>(global2.x, 1697f != global1.e, all(vec2<bool>(global2.x, global1.b.x)))), !global1.b.x, global1.b.x), 1003f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)));
    var var_2 = _wgslsmith_f_op_f32(393f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(step(-363f, global1.e))))));
    let var_3 = 77580u;
    var var_4 = func_4(global3.a >> (~(~_wgslsmith_dot_vec2_u32(global3.b, u_input.a)) % 32u), global1.b.x, Struct_3(Struct_1(~(global1.c.x ^ global3.a), global2.zz, _wgslsmith_div_vec3_i32(max(global1.c, vec3<i32>(0i, global3.a, global1.a)), ~vec3<i32>(global1.a, global3.a, global1.c.x)), 1u, -1000f), Struct_2(-(~global1.a), global3.b), !global0[_wgslsmith_index_u32(~global1.d & 41899u, 17u)], Struct_1(~global1.a, global1.b, abs(global1.c), global3.b.x, _wgslsmith_f_op_f32(ceil(-1427f))), vec3<i32>(1i, _wgslsmith_mod_i32(8060i, 1i), 41828i) | vec3<i32>(global1.a, abs(global3.a), 0i)), Struct_3(Struct_1(-abs(global1.c.x), global1.b, _wgslsmith_add_vec3_i32(global1.c, global1.c) | -global1.c, ~global1.d, _wgslsmith_div_f32(global1.e, _wgslsmith_f_op_f32(-var_0.x))), Struct_2(_wgslsmith_sub_i32(-2417i, _wgslsmith_dot_vec2_i32(global1.c.yz, global1.c.zz)), reverseBits(~global3.b)), false, Struct_1(1i, var_1.zx, _wgslsmith_add_vec3_i32(select(vec3<i32>(global1.a, -38881i, 2147483647i), vec3<i32>(2147483647i, global3.a, global3.a), false), vec3<i32>(global3.a, 8748i, global1.a)), var_3, 691f), vec3<i32>(abs(global1.a), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -68033i, 69436i, global3.a), vec4<i32>(1i, global3.a, 2147483647i, 0i)), vec4<i32>(global3.a, global3.a, global3.a, global1.a)), global1.a << (~global1.d % 32u))));
    return StorageBuffer(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

