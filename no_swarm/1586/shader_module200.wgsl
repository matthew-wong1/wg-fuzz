struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1713f);

var<private> global1: vec2<u32> = vec2<u32>(28661u, 0u);

var<private> global2: Struct_2;

var<private> global3: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    global1 = ~vec2<u32>(_wgslsmith_sub_u32(global1.x, u_input.b ^ 4294967295u), 48494u) << (firstTrailingBit(reverseBits(~(~global2.a.d.xz))) % vec2<u32>(32u));
    let var_0 = Struct_1(!global2.d.c, global2.d.b, global2.a.b.zyz, _wgslsmith_mod_vec3_u32(vec3<u32>(abs(global2.d.d.x), _wgslsmith_sub_u32(44212u, global2.c.x), 76547u), ~abs(vec3<u32>(8328u, global2.d.d.x, 52569u))) >> (vec3<u32>(global1.x, 1u, _wgslsmith_sub_u32(u_input.b, u_input.b) << (~4294967295u % 32u)) % vec3<u32>(32u)), -35394i);
    var var_1 = !(!(var_0.b.x | !(!var_0.a.x)));
    var var_2 = ~global1.x;
    global2 = Struct_2(global2.a, !var_0.a, vec4<u32>(~(48892u << (0u % 32u)), global1.x, ~4294967295u, global1.x) & global2.c, Struct_1(!(!select(global2.d.b.yyw, vec3<bool>(var_0.a.x, var_0.a.x, global2.a.c.x), global2.a.c.x)), vec4<bool>(true, true, var_0.b.x, global2.a.b.x), vec3<bool>(_wgslsmith_f_op_f32(select(arg_0.x, global0.a, global2.d.c.x)) >= global0.a, global2.a.c.x, global2.a.c.x), global2.d.d, ~firstLeadingBit(-14651i)));
    return !select(var_0.a, vec3<bool>(all(select(global2.b, vec3<bool>(var_0.b.x, true, var_0.a.x), vec3<bool>(global2.a.c.x, global2.a.c.x, global2.d.b.x))), global2.a.a.x, any(vec2<bool>(var_0.a.x, var_0.b.x))), var_0.b.xxx);
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec3_i32(-firstLeadingBit(firstTrailingBit(select(vec3<i32>(1i, u_input.a, -2147483647i), vec3<i32>(309i, -2147483647i, 0i), true))), _wgslsmith_add_vec3_i32(-firstLeadingBit(vec3<i32>(u_input.a, 7954i, u_input.a) & vec3<i32>(-1i, global2.d.e, 0i)), vec3<i32>(~(-4852i), ~(i32(-1i) * -32071i), -abs(1i))));
    let var_1 = Struct_1(select(global2.d.a, select(func_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.a, global0.a), vec2<f32>(global0.a, global0.a)))), global2.b, all(!vec2<bool>(global2.b.x, true))), global2.a.a), !vec4<bool>(all(vec2<bool>(false, false)), false, global2.a.a.x, global2.b.x), func_3(vec2<f32>(_wgslsmith_f_op_f32(-991f * global0.a), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), countOneBits(vec3<u32>(global2.c.x, ~global1.x, 35901u) >> (abs(global2.c.ywx) % vec3<u32>(32u))), _wgslsmith_mod_i32(16718i, global2.d.e));
    global0 = Struct_3(-890f);
    global3 = _wgslsmith_f_op_f32(floor(1407f));
    var var_2 = any(global2.a.c);
    return Struct_2(Struct_1(select(global2.a.c, func_3(vec2<f32>(global0.a, global0.a)), all(select(global2.d.b, vec4<bool>(global2.b.x, true, var_1.c.x, true), var_1.b))), select(select(!vec4<bool>(global2.d.a.x, false, false, var_1.c.x), var_1.b, var_1.b), select(vec4<bool>(global2.d.a.x, var_1.a.x, true, true), select(var_1.b, global2.a.b, global2.a.b), global0.a < global0.a), true), !select(select(var_1.a, global2.d.b.yyy, var_1.c), func_3(vec2<f32>(-1000f, 2171f)), global2.a.b.x), ~((var_1.d ^ var_1.d) & vec3<u32>(48196u, 17295u, 4294967295u)), _wgslsmith_div_i32(var_0.x, -35364i)), select(vec3<bool>(-1350f > global0.a, select(true, var_1.e == -11044i, true), any(func_3(vec2<f32>(global0.a, global0.a)))), !select(select(global2.d.b.xwy, global2.d.a, global2.a.c.x), var_1.c, true), !(-global2.a.e < (global2.a.e >> (global2.d.d.x % 32u)))), min(_wgslsmith_div_vec4_u32(~(vec4<u32>(31001u, 88401u, global1.x, global2.d.d.x) >> (vec4<u32>(20689u, 21763u, 4294967295u, 1u) % vec4<u32>(32u))), global2.c), global2.c), Struct_1(vec3<bool>(all(func_3(vec2<f32>(global0.a, global0.a))), true, all(vec3<bool>(var_1.a.x, global2.a.c.x, var_1.b.x))), select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.c.x, global2.d.b.x, false, global2.a.b.x), all(global2.b)), global2.d.a, ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.d.x, 707u, 8684u) | vec3<u32>(2693u, u_input.b, global2.a.d.x), vec3<u32>(var_1.d.x, 4333u, 51743u)), ~firstLeadingBit(_wgslsmith_mult_i32(u_input.a, global2.d.e))));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1898f, -120f, global0.a) - vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -708f) + _wgslsmith_f_op_f32(global0.a * global0.a)), 743f)), _wgslsmith_div_f32(244f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a * 324f))))));
    global2 = func_2();
    global2 = Struct_2(func_2().d, !global2.d.a, arg_1, global2.a);
    var var_1 = countOneBits(vec2<i32>(func_2().a.e, 1i));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1512f, 212f, global0.a))))))));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 20610u;
    global0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a - global0.a))), 1000f)) * -2138f));
    global3 = _wgslsmith_f_op_f32(global0.a - global0.a);
    var var_1 = var_0;
    var var_2 = global2.d.c;
    var var_3 = func_1(global1.x, vec4<u32>(37950u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, 1u), 4294967295u, var_0 << (4294967295u % 32u), ~66172u), _wgslsmith_div_vec4_u32(vec4<u32>(27775u, global1.x, 8484u, var_0) | global2.c, ~vec4<u32>(1u, 27890u, 45034u, 1u))), 23516u));
    var var_4 = global2.a.a.x;
    let var_5 = !var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(~(-20641i)), 46238i));
}

