struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<f32>;

var<private> global2: Struct_4 = Struct_4(vec3<bool>(true, true, true), Struct_3(vec2<u32>(1u, 1u), vec4<i32>(i32(-2147483648), 0i, 25219i, 1i)), Struct_2(Struct_1(41095u, vec4<f32>(-1159f, -110f, -1007f, 1000f)), Struct_1(12026u, vec4<f32>(-1855f, 1000f, 809f, 969f)), Struct_1(4294967295u, vec4<f32>(-838f, 153f, -464f, 829f)), Struct_1(34718u, vec4<f32>(347f, 138f, -1492f, -1000f))), 4294967295u);

var<private> global3: array<Struct_4, 16>;

var<private> global4: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(16812u, 3350u, 84113u, 0u), vec4<u32>(31890u, 88905u, 11089u, 9832u), vec4<u32>(1u, 0u, 1u, 8391u), vec4<u32>(4294967295u, 28859u, 19475u, 1u), vec4<u32>(4294967295u, 33566u, 48409u, 80580u), vec4<u32>(1u, 1u, 0u, 36317u), vec4<u32>(42005u, 14669u, 28460u, 0u), vec4<u32>(1u, 39569u, 35532u, 1u), vec4<u32>(4294967295u, 43109u, 1u, 24527u), vec4<u32>(4294967295u, 40280u, 1u, 37844u), vec4<u32>(12428u, 0u, 11836u, 1u), vec4<u32>(47577u, 4294967295u, 3397u, 16240u), vec4<u32>(1u, 1u, 69274u, 0u), vec4<u32>(0u, 1u, 78729u, 50856u), vec4<u32>(1u, 32465u, 55160u, 1u), vec4<u32>(32509u, 4294967295u, 2184u, 1u), vec4<u32>(41719u, 4294967295u, 4294967295u, 9512u), vec4<u32>(11584u, 15502u, 56341u, 0u), vec4<u32>(6373u, 36141u, 0u, 284u), vec4<u32>(4294967295u, 1u, 4326u, 36475u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_5, arg_3: Struct_3) -> f32 {
    global0 = true;
    global0 = false;
    var var_0 = _wgslsmith_sub_u32(min(arg_1, select(abs(select(0u, arg_0.a, false)), _wgslsmith_div_u32(arg_3.a.x, arg_3.a.x), true)), global2.d);
    var var_1 = global2.b.b;
    global0 = ~(~5976u | ~_wgslsmith_mod_u32(arg_0.a, 0u)) < abs(countOneBits(63518u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -653f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_div_f32(global2.c.b.b.x, -629f))));
}

fn func_3(arg_0: Struct_5) -> i32 {
    let var_0 = Struct_1(1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(249f, _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(757f * arg_0.a.x)), 418f, -1312f) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-471f, arg_0.a.x, 252f, 651f) * arg_0.a), _wgslsmith_f_op_vec4_f32(arg_0.a * vec4<f32>(-1457f, global2.c.c.b.x, -218f, arg_0.a.x))))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.b.b.x, _wgslsmith_f_op_f32(-global2.c.c.b.x), global1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1439f, -801f, _wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-438f, 439f, -1000f), arg_0.a.wzw)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1890f, var_0.b.x, -154f), var_0.b.xyw)), _wgslsmith_f_op_vec3_f32(-global2.c.a.b.xxx)))) * vec3<f32>(1f, -972f, var_0.b.x)));
    global2 = Struct_4(vec3<bool>(!global2.a.x, ~(~global2.b.a.x) != ~40966u, any(!global2.a) || any(!global2.a.xx)), Struct_3(global2.b.a, abs(select(global2.b.b >> (global4[_wgslsmith_index_u32(38970u, 20u)] % vec4<u32>(32u)), global2.b.b, !vec4<bool>(true, true, global2.a.x, global2.a.x)))), global2.c, 33718u);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.yzz)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), _wgslsmith_div_f32(global2.c.b.b.x, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -492f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.zyy))))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.zww) - vec3<f32>(-133f, arg_0.a.x, var_0.b.x)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.b.zxz)), _wgslsmith_f_op_vec3_f32(arg_0.a.yxw * vec3<f32>(var_1.x, var_1.x, -933f)))))));
    global0 = any(!(!select(!global2.a.yx, vec2<bool>(true, true), vec2<bool>(true, true))));
    return abs(reverseBits(firstLeadingBit(~(-arg_0.b))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = vec4<bool>(!all(vec4<bool>(u_input.b.x > global2.b.b.x, true, any(global2.a.zx), !arg_1)), any(select(vec2<bool>(true, arg_1), vec2<bool>(!global2.a.x, true), true)), true, arg_1);
    global4 = array<vec4<u32>, 20>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global2.c.b.b.xzw)));
    var var_2 = -vec2<i32>(1i, -45207i);
    var var_3 = vec3<i32>((_wgslsmith_mult_i32(-49330i, arg_0) | ~arg_0) ^ -9044i, select(-(~(~global2.b.b.x)), ~func_3(Struct_5(vec4<f32>(var_1.x, -726f, global2.c.d.b.x, 649f), -23i)), global2.b.b.x >= -1i), var_2.x);
    return Struct_1(4294967295u, vec4<f32>(-217f, -1510f, arg_3, _wgslsmith_f_op_f32(f32(-1f) * -966f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.d.b.x, _wgslsmith_f_op_f32(-939f - -875f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(global2.c.c, global2.b.a.x, Struct_5(vec4<f32>(-924f, global1.x, -866f, -865f), 33574i), Struct_3(vec2<u32>(global2.c.a.a, global2.d), vec4<i32>(-12i, global2.b.b.x, -2147483647i, global2.b.b.x)))), global2.c.b.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(func_2(select(36505i, 748i, true), all(vec4<bool>(global2.a.x, true, global2.a.x, true)), reverseBits(0u), 523f), global2.d, Struct_5(global2.c.d.b, u_input.b.x), global2.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(~global2.d | 39018u, _wgslsmith_mod_vec3_u32(~(~vec3<u32>(global2.c.b.a, global2.c.a.a, 19104u) << (~vec3<u32>(2617u, global2.d, global2.c.a.a) % vec3<u32>(32u))), firstLeadingBit(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 45867u, 4294967295u), vec3<u32>(global2.d, 58450u, global2.d))))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))))), global2.b.b.x);
}

