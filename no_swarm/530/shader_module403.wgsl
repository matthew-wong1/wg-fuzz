struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, true), 932f, vec4<u32>(22855u, 64596u, 4294967295u, 54653u), true, 2147483647i), false, vec4<i32>(-1i, 36090i, 1i, -6029i), vec4<i32>(-1i, 1i, 45894i, 14127i), vec2<bool>(false, false));

var<private> global2: vec3<u32>;

var<private> global3: vec2<i32> = vec2<i32>(i32(-2147483648), 82853i);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec3_f32(arg_0.xyy, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.yxz * vec3<f32>(-114f, arg_0.x, global1.a.b)) * _wgslsmith_f_op_vec3_f32(min(arg_0.yyy, vec3<f32>(global1.a.b, global1.a.b, 1313f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(710f, 669f, 113f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.b, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -436f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.b, arg_0.x, arg_0.x) * _wgslsmith_div_vec3_f32(arg_0.xxz, arg_0.wyw)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(var_0.yx));
    global0 = array<vec3<bool>, 6>();
    let var_2 = Struct_1(vec2<bool>(!(u_input.a.x >= _wgslsmith_mult_i32(global3.x, u_input.d)), false), -970f, global1.a.c, true, (global3.x & (u_input.a.x | (arg_1 >> (global2.x % 32u)))) & _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(global3.x, 0i, -66325i)), ~(~u_input.c)));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0.x))));
    return vec2<bool>(((global2.x >= abs(global2.x)) & (_wgslsmith_f_op_f32(global1.a.b * 327f) <= _wgslsmith_f_op_f32(343f + 368f))) && var_2.d, any(vec2<bool>(true, !(!global1.b))));
}

fn func_2() -> vec4<i32> {
    global0 = array<vec3<bool>, 6>();
    var var_0 = Struct_3(countOneBits(global1.d), -13753i, global1.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a.b), global1.a.b))), global1.a.b, 665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.b, 1325f)))));
    var_0 = Struct_3(firstTrailingBit(vec4<i32>(-1i) * -var_0.a), global1.d.x, global1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.d)) * vec4<f32>(-283f, var_0.c.b, var_0.d.x, var_0.c.b)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-global1.a.b), _wgslsmith_f_op_f32(-global1.a.b), _wgslsmith_f_op_f32(ceil(110f))))) + _wgslsmith_f_op_vec4_f32(var_0.d + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2988f, var_0.c.b, -906f, -435f)) * _wgslsmith_f_op_vec4_f32(var_0.d + var_0.d)))));
    global0 = array<vec3<bool>, 6>();
    let var_1 = Struct_2(Struct_1(select(vec2<bool>(true && var_0.c.d, var_0.c.d), !func_3(vec4<f32>(434f, -669f, var_0.d.x, 273f), u_input.d), false), -1985f, vec4<u32>(global2.x << (0u % 32u), var_0.c.c.x, countOneBits(~global1.a.c.x), 0u), all(vec2<bool>(var_0.c.d, var_0.c.d)), -26678i), !(!global1.b), var_0.a, reverseBits((global1.c | global1.c) ^ var_0.a) & min(countOneBits(vec4<i32>(global3.x, 0i, 1i, 2147483647i)), var_0.a | global1.c), select(global1.e, vec2<bool>(true, true), vec2<bool>(all(select(vec4<bool>(var_0.c.d, false, true, global1.e.x), vec4<bool>(var_0.c.d, global1.a.d, var_0.c.d, true), global1.e.x)), global1.a.a.x)));
    return vec4<i32>(global3.x, global3.x, abs(global1.a.e), u_input.d);
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(~1u, ~global1.a.c.x, ~1u, _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(65032u, 46565u, global2.x), ~4294967295u)), select(_wgslsmith_add_vec4_u32(u_input.b, ~global1.a.c), vec4<u32>(_wgslsmith_mult_u32(global1.a.c.x, 35558u), _wgslsmith_dot_vec2_u32(vec2<u32>(107200u, global2.x), vec2<u32>(0u, 0u)), u_input.e.x, 4294967295u), global1.e.x) << (vec4<u32>(1u, ~(2476u & u_input.b.x), global1.a.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(10839u, global1.a.c.x), vec2<u32>(33272u, 1u))) % vec4<u32>(32u)));
    var var_1 = min(-vec4<i32>(global1.d.x, global3.x | _wgslsmith_add_i32(2147483647i, u_input.d), ~(global1.a.e ^ global1.d.x), _wgslsmith_mult_i32(global1.a.e, max(-45796i, -1i))), global1.c ^ -global1.c);
    global1 = Struct_2(Struct_1(vec2<bool>(any(vec2<bool>(false, false)), _wgslsmith_f_op_f32(ceil(global1.a.b)) > _wgslsmith_div_f32(-502f, global1.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b + global1.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2010f)) + -1000f)), abs(global1.a.c), !global1.b, _wgslsmith_mult_i32(~global3.x, var_1.x)), true, ~(~func_2()), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(select(~vec4<i32>(global1.c.x, 2147483647i, global3.x, 1i), vec4<i32>(30270i, 44015i, 0i, var_1.x), true), global1.d), select(global1.c, firstTrailingBit(vec4<i32>(1i, 2147483647i, global3.x, 1i)), !global1.e.x) >> (vec4<u32>(u_input.b.x, global1.a.c.x, select(global1.a.c.x, var_0.x, true), ~4294967295u) % vec4<u32>(32u))), !global1.a.a);
    let var_2 = (_wgslsmith_f_op_f32(sign(global1.a.b)) == _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.b + -278f), _wgslsmith_f_op_f32(-global1.a.b))))) || global1.b;
    let var_3 = reverseBits(_wgslsmith_add_u32(~23971u, global2.x));
    return Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1512f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-159f)) * global1.a.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 6>();
    var var_0 = func_1();
    var var_1 = global1.a;
    let var_2 = ~_wgslsmith_mult_vec2_i32(countOneBits(u_input.a.xx), min(vec2<i32>(-1i) * -vec2<i32>(-1i, global1.c.x), global1.c.zz));
    let var_3 = select(_wgslsmith_div_vec3_u32(~(~vec3<u32>(49746u, 4294967295u, var_1.c.x) & vec3<u32>(1u, u_input.b.x, 65997u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(35223u & global2.x, 0u, ~1u), global1.a.c.zww | firstLeadingBit(var_1.c.zxw), min(max(vec3<u32>(global1.a.c.x, 34970u, u_input.b.x), vec3<u32>(u_input.e.x, var_1.c.x, global1.a.c.x)), countOneBits(vec3<u32>(4294967295u, u_input.e.x, global2.x))))), u_input.b.zzz, any(vec4<bool>(true, true, false | (u_input.b.x >= global2.x), false)));
    let x = u_input.a;
    s_output = StorageBuffer(select(global2.x, ~var_1.c.x, !any(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.c.x, 4294967295u), 6u)])));
}

