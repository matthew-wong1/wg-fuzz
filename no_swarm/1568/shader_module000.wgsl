struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<i32>(2147483647i, 2524i), Struct_3(vec2<i32>(18550i, -1i), Struct_2(Struct_1(vec4<f32>(-570f, 1352f, -454f, 236f)), -886f, vec2<f32>(625f, -565f), Struct_1(vec4<f32>(825f, 400f, -418f, -387f))), i32(-2147483648)));

var<private> global1: array<bool, 18> = array<bool, 18>(false, true, true, false, true, false, false, true, true, true, false, false, false, false, true, true, false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> u32 {
    global0 = Struct_4(vec2<i32>(-1i, 0i), Struct_3(~(-(u_input.a & vec2<i32>(-2147483647i, global0.a.x))), Struct_2(global0.b.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(919f, 232f)) - -260f), _wgslsmith_div_vec2_f32(global0.b.b.a.a.zz, _wgslsmith_f_op_vec2_f32(-global0.b.b.c)), Struct_1(_wgslsmith_f_op_vec4_f32(global0.b.b.d.a * vec4<f32>(global0.b.b.a.a.x, global0.b.b.a.a.x, 1370f, global0.b.b.b)))), min(global0.a.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), global0.b.a))));
    var var_0 = select(_wgslsmith_sub_vec4_u32(~select(vec4<u32>(u_input.c.x, u_input.c.x, 1u, 58382u), vec4<u32>(u_input.c.x, 118548u, u_input.b, u_input.b), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], false)), select(max(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.c.x, 28410u)), vec4<u32>(u_input.c.x, u_input.c.x, 0u, 36011u) << (vec4<u32>(23674u, u_input.c.x, 4294967295u, u_input.b) % vec4<u32>(32u)), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 18u)], true, global1[_wgslsmith_index_u32(1u, 18u)], true))), abs(vec4<u32>(~8942u, 30303u, ~u_input.c.x, countOneBits(u_input.b))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1620u << (_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, u_input.c.x, 10601u)) % 32u), ~abs(41270u)), 18u)]) << (firstTrailingBit(~reverseBits(~vec4<u32>(u_input.b, 91141u, 4294967295u, 4264u))) % vec4<u32>(32u));
    var_0 = ~(max(vec4<u32>(var_0.x, 18600u, u_input.c.x, 36694u), select(select(vec4<u32>(72843u, u_input.c.x, 15153u, 0u), vec4<u32>(64948u, u_input.b, 44985u, u_input.c.x), vec4<bool>(global1[_wgslsmith_index_u32(0u, 18u)], false, global1[_wgslsmith_index_u32(98037u, 18u)], true)), vec4<u32>(u_input.b, var_0.x, 1u, u_input.b), true)) | vec4<u32>(45396u, 4294967295u, ~(~var_0.x), _wgslsmith_clamp_u32(max(var_0.x, var_0.x), u_input.b, ~var_0.x)));
    var var_1 = global0.b.b.a;
    var var_2 = Struct_4(vec2<i32>(~1i, global0.a.x), global0.b);
    return 70032u;
}

fn func_2() -> vec2<bool> {
    var var_0 = vec3<u32>(~_wgslsmith_sub_u32(~1u, func_3()), countOneBits(2111u), 22353u);
    var var_1 = abs(var_0.x);
    var var_2 = -global0.b.a.x;
    var var_3 = -_wgslsmith_mult_vec2_i32(u_input.a >> (vec2<u32>(var_0.x | var_0.x, 1u) % vec2<u32>(32u)), global0.a);
    var var_4 = global1[_wgslsmith_index_u32(u_input.b, 18u)] | global1[_wgslsmith_index_u32(abs(var_0.x), 18u)];
    return !(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 18u)], false), select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 18u)], false), vec2<bool>(false, false), false), false)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> u32 {
    var var_0 = true;
    var var_1 = select(!select(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(15898u, 18u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 18u)]), global1[_wgslsmith_index_u32(4294967295u, 18u)]), vec2<bool>(true, true), select(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_1, 18u)]), func_2(), select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 18u)], global1[_wgslsmith_index_u32(arg_1, 18u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 18u)])))), !select(func_2(), vec2<bool>(u_input.a.x <= 27507i, false), !vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 18u)])), !select(!func_2(), select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 18u)], global1[_wgslsmith_index_u32(arg_1, 18u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 18u)]), global1[_wgslsmith_index_u32(u_input.b, 18u)]), func_2(), func_2()), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 18u)], false)));
    var_0 = false;
    var var_2 = global0.b;
    let var_3 = Struct_4(firstLeadingBit(~vec2<i32>(11874i, 41943i)) | var_2.a, global0.b);
    return arg_1;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_4) -> StorageBuffer {
    let var_0 = select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 18u)], all(!(!vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(u_input.c.x, 18u)]))), ((arg_1.x != arg_2.b.b.d.a.x) & true) | global1[_wgslsmith_index_u32(u_input.c.x, 18u)]), vec3<bool>(all(vec4<bool>(!global1[_wgslsmith_index_u32(5791u, 18u)], false, true, u_input.c.x == arg_0.x)), global1[_wgslsmith_index_u32(u_input.c.x, 18u)], !global1[_wgslsmith_index_u32(firstLeadingBit(1u), 18u)]), vec3<bool>(any(select(vec2<bool>(global1[_wgslsmith_index_u32(11369u, 18u)], global1[_wgslsmith_index_u32(u_input.b, 18u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 18u)]), false)) | !any(vec2<bool>(false, false)), any(!(!vec4<bool>(global1[_wgslsmith_index_u32(67550u, 18u)], false, global1[_wgslsmith_index_u32(arg_0.x, 18u)], global1[_wgslsmith_index_u32(arg_0.x, 18u)]))), true));
    var var_1 = global0.b;
    global0 = Struct_4(min(~select(max(global0.b.a, vec2<i32>(u_input.a.x, -6438i)), u_input.a, any(vec2<bool>(var_0.x, false))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, var_1.c, var_1.a.x), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x)), _wgslsmith_mult_i32(-61173i, var_1.a.x)) << (_wgslsmith_mult_vec2_u32(countOneBits(u_input.c.zy), reverseBits(arg_0.xz)) % vec2<u32>(32u))), arg_2.b);
    global1 = array<bool, 18>();
    var_1 = global0.b;
    return StorageBuffer(firstTrailingBit(min(min(vec3<i32>(34636i, arg_2.b.a.x, 1i), -vec3<i32>(u_input.a.x, -23868i, global0.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(-14767i, u_input.a.x, arg_2.b.a.x) >> (u_input.c % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.c, -5251i, global0.b.a.x), vec3<i32>(-60992i, global0.a.x, -30785i), vec3<i32>(u_input.a.x, -1i, -44729i))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b.b.c.x))));
    var_0 = _wgslsmith_f_op_f32(-global0.b.b.d.a.x);
    global1 = array<bool, 18>();
    var_0 = 1000f;
    global1 = array<bool, 18>();
    global1 = array<bool, 18>();
    let x = u_input.a;
    s_output = func_4(~vec3<u32>(_wgslsmith_clamp_u32(~65672u, 0u, u_input.b), ~func_1(Struct_1(global0.b.b.d.a), u_input.b, -2147483647i), _wgslsmith_dot_vec2_u32(u_input.c.xz | u_input.c.yz, ~u_input.c.xz)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b.b.d.a.x))), _wgslsmith_f_op_f32(sign(-736f)), -1737f, _wgslsmith_f_op_f32(ceil(342f))), _wgslsmith_f_op_vec4_f32(-global0.b.b.d.a)), Struct_4(~(~_wgslsmith_mult_vec2_i32(global0.a, u_input.a)), global0.b));
}

