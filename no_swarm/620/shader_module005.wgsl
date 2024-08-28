struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 1u), true, vec3<i32>(1224i, 2147483647i, 48311i)), vec3<bool>(true, true, false), vec2<bool>(true, false), 51435u), vec2<i32>(i32(-2147483648), -1i), Struct_2(Struct_1(vec2<u32>(31206u, 4294967295u), true, vec3<i32>(-50864i, 2147483647i, -1i)), vec3<bool>(false, false, false), vec2<bool>(false, true), 41681u), Struct_2(Struct_1(vec2<u32>(71121u, 19948u), false, vec3<i32>(-23448i, 34939i, -18665i)), vec3<bool>(false, false, true), vec2<bool>(false, true), 17711u));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(23270u, 5818u), true, vec3<i32>(i32(-2147483648), 2147483647i, -15285i));

var<private> global3: vec4<bool>;

var<private> global4: bool = false;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_3(global1.d, -global1.a.a.c.yz ^ -firstLeadingBit(global2.c.zy), global1.c, global1.c);
    global0 = array<Struct_1, 26>();
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-241f)), _wgslsmith_f_op_f32(f32(-1f) * -354f))))), vec2<f32>(1f, -537f)));
    var var_2 = global1.c;
    var var_3 = var_0.d.a.c;
    return 20968u;
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<u32>(abs(0u), u_input.a, _wgslsmith_add_u32(global1.d.d, ~func_3()) >> (23537u % 32u), u_input.a);
    var var_1 = vec4<bool>(global3.x && any(global3.xxx), false, false, true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1941f, 957f, 308f))))));
    global3 = vec4<bool>(!(~u_input.a >= 1u), global3.x, var_1.x | any(vec3<bool>(!global3.x, -154f != var_2.x, true)), all(vec3<bool>(all(global1.a.b.zx), true, all(var_1.xy))));
    var var_3 = u_input.d;
    return Struct_1(var_0.yy, !(!global2.b), vec3<i32>(_wgslsmith_mod_i32(global2.c.x, global1.b.x), countOneBits(global1.b.x), _wgslsmith_add_i32(~2147483647i, global2.c.x)) >> (_wgslsmith_add_vec3_u32(var_0.xzw | _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, global1.c.d, 0u), vec3<u32>(u_input.a, 4294967295u, 0u)), abs(min(var_0.wwy, var_0.yxx))) % vec3<u32>(32u)));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    var var_0 = ~global1.d.d;
    global4 = !any(vec2<bool>(select(false, !global2.b, select(global1.d.b.x, arg_2.b, arg_2.b)), arg_2.b));
    global3 = !(!(!select(vec4<bool>(false, arg_2.b, arg_2.b, false), !vec4<bool>(true, global1.d.b.x, global2.b, global2.b), global3.x)));
    var var_1 = -(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.d, 4186i), 0i) | min(-arg_0, 47492i)) << (arg_2.a.x % 32u);
    var_1 = 36799i;
    return false;
}

fn func_1() -> Struct_1 {
    global4 = all(vec3<bool>(global3.x == (select(global1.a.d, 15494u, global1.a.a.b) > (38778u | global1.c.a.a.x)), func_4(-2147483647i << (~global2.a.x % 32u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(681f, -894f, -753f), vec3<f32>(-357f, -1130f, 1920f)), vec3<f32>(-797f, -639f, 1385f), any(global1.c.b))), func_2()), global1.d.a.b));
    var var_0 = global1.c;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    let var_0 = global0[_wgslsmith_index_u32(abs(func_3()), 26u)];
    global2 = func_2();
    global1 = Struct_3(Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(56044u, global2.a.x), vec2<u32>(u_input.a, 4294967295u)), ~vec2<u32>(0u, u_input.a), select(var_0.a, var_0.a, vec2<bool>(global2.b, true))), !any(global1.c.b), _wgslsmith_sub_vec3_i32(var_0.c, global1.c.a.c)), global1.d.b, select(!vec2<bool>(true, var_0.b), global1.d.c, global1.d.c), ~global2.a.x), ~(~(global2.c.yz ^ (vec2<i32>(u_input.b, 37621i) >> (vec2<u32>(global1.a.d, u_input.a) % vec2<u32>(32u))))), global1.a, Struct_2(global0[_wgslsmith_index_u32(23123u, 26u)], global3.wxw, global1.d.b.yy, ~(~(~11806u))));
    global1 = Struct_3(global1.d, ~(-min(vec2<i32>(-11309i, var_0.c.x), global2.c.yx)), global1.d, Struct_2(global0[_wgslsmith_index_u32(4294967295u, 26u)], !global3.zzz, global3.yz, ~func_2().a.x));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-250f, 132f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(-143f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(835f, 2138f, global2.b)))))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.x, var_1.x, var_1.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-187f - -1557f), var_1.x, -1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-6717i, -8502i), var_2.x, -1837f, -(vec4<i32>(func_1().c.x, var_0.c.x, ~global1.c.a.c.x, abs(2147483647i)) ^ max(~vec4<i32>(global1.d.a.c.x, 1i, 8893i, u_input.c), ~vec4<i32>(-25648i, global1.c.a.c.x, var_0.c.x, 1i))), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x), var_2.x));
}

