struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true));

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, -14549i, -1i);

var<private> global2: array<Struct_2, 7>;

var<private> global3: bool = false;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> bool {
    global1 = countOneBits(abs(vec3<i32>(27764i, -2147483647i, -1i))) & abs(_wgslsmith_div_vec3_i32(vec3<i32>(global1.x, 0i, global1.x) ^ max(vec3<i32>(global1.x, 29716i, -34515i), vec3<i32>(28868i, -36171i, 25278i)), _wgslsmith_sub_vec3_i32(select(vec3<i32>(1i, global1.x, global1.x), vec3<i32>(global1.x, -34246i, 18388i), vec3<bool>(arg_1.a.a.x, global0.a.x, true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(19455i, global1.x, 18230i), vec3<i32>(global1.x, 0i, -1i), vec3<i32>(global1.x, global1.x, global1.x)))));
    global2 = array<Struct_2, 7>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_0);
    var var_1 = all(!select(vec4<bool>(global0.a.x, false, global0.a.x, false), vec4<bool>(false, false, true, global0.a.x), true)) && !arg_1.a.a.x;
    var_0 = _wgslsmith_f_op_vec3_f32(step(arg_0, _wgslsmith_f_op_vec3_f32(max(arg_0, vec3<f32>(_wgslsmith_f_op_f32(sign(-950f)), 715f, 1f)))));
    return global0.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>) -> bool {
    global3 = any(!(!vec3<bool>(func_3(vec3<f32>(arg_1, arg_1, arg_1), Struct_2(arg_0, vec4<u32>(0u, 4294967295u, u_input.a, arg_2.x), vec2<f32>(1084f, 1868f))), true, arg_0.a.x)));
    var var_0 = vec2<i32>(global1.x, -63597i);
    let var_1 = global2[_wgslsmith_index_u32(u_input.a, 7u)];
    var var_2 = _wgslsmith_mult_u32(43532u, var_1.b.x | arg_2.x);
    var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(max(1767i << (arg_2.x % 32u), -global1.x), _wgslsmith_sub_i32(countOneBits(var_0.x), -global1.x)), _wgslsmith_mult_i32(var_0.x, -select(0i, -1i, true))), ~(-firstTrailingBit(global1.yz)));
    return ((global1.x ^ -23294i) ^ select(var_0.x, 0i, true)) >= global1.x;
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_2 {
    global3 = any(select(select(vec4<bool>(true, global0.a.x, !global0.a.x, global0.a.x), vec4<bool>(func_2(Struct_1(vec2<bool>(false, global0.a.x)), 948f, vec2<u32>(u_input.a, 46039u)), global1.x >= global1.x, !global0.a.x, true), vec4<bool>(true, -1160f == arg_0, !global0.a.x, true)), select(vec4<bool>(select(global0.a.x, global0.a.x, global0.a.x), true, global0.a.x, global0.a.x), select(!vec4<bool>(global0.a.x, false, true, false), vec4<bool>(true, true, false, true), !global0.a.x), vec4<bool>(true || global0.a.x, global0.a.x || false, false, true)), all(!(!vec3<bool>(false, false, global0.a.x)))));
    var var_0 = global2[_wgslsmith_index_u32(~63252u, 7u)];
    let var_1 = 1u;
    var var_2 = var_0.c.x;
    var var_3 = Struct_1(!var_0.a.a);
    return global2[_wgslsmith_index_u32(2379u | var_1, 7u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> f32 {
    var var_0 = vec2<bool>(false, arg_3.a.a.x);
    var var_1 = Struct_2(arg_3.a, func_1(402f, _wgslsmith_mult_u32(arg_1.b.x, ~u_input.a)).b, vec2<f32>(_wgslsmith_f_op_f32(-func_1(arg_3.c.x, 41304u & u_input.a).c.x), -733f));
    var var_2 = arg_0.a;
    global2 = array<Struct_2, 7>();
    let var_3 = reverseBits(global1.x);
    return _wgslsmith_f_op_f32(-arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_4(func_1(-1007f, _wgslsmith_mult_u32(4294967295u, u_input.a)), Struct_2(func_1(1460f, 4294967295u).a, vec4<u32>(u_input.a, 13017u, 1u, 26395u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-590f, 612f))), global1.x, Struct_2(func_1(1759f, 43434u).a, _wgslsmith_sub_vec4_u32(vec4<u32>(40874u, u_input.a, 4294967295u, u_input.a), vec4<u32>(14048u, 1u, u_input.a, 23790u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-103f, -1156f))))), _wgslsmith_f_op_f32(ceil(1000f))));
    global2 = array<Struct_2, 7>();
    var var_1 = select(!vec3<bool>(func_3(vec3<f32>(var_0.x, -1318f, var_0.x), func_1(1231f, u_input.a)), false, -236f < _wgslsmith_f_op_f32(exp2(var_0.x))), !vec3<bool>(global0.a.x, true, global0.a.x), all(global0.a));
    var var_2 = 503f;
    global1 = vec3<i32>(global1.x & global1.x, 0i, -35636i) ^ -(~vec3<i32>(~(-40659i), 408i, 31471i));
    let var_3 = Struct_2(Struct_1(var_1.xz), vec4<u32>(~(~4294967295u & _wgslsmith_sub_u32(73272u, u_input.a)), 0u, ~u_input.a, 4294967295u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, -395f))))));
    global1 = _wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, select(select(-63496i, abs(global1.x), any(var_3.a.a)), global1.x, (var_3.a.a.x & global0.a.x) & false), -21622i), _wgslsmith_mod_vec3_i32(min(_wgslsmith_mult_vec3_i32(~vec3<i32>(1i, global1.x, global1.x), vec3<i32>(0i, global1.x, global1.x)), abs(vec3<i32>(-1i, -60636i, 45615i))), ~((vec3<i32>(global1.x, 9167i, global1.x) << (vec3<u32>(var_3.b.x, 0u, u_input.a) % vec3<u32>(32u))) >> ((var_3.b.zzz & var_3.b.wxz) % vec3<u32>(32u)))));
    global0 = func_1(-1338f, 15298u).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, vec4<u32>(~61880u, var_3.b.x, 82761u, reverseBits(_wgslsmith_add_u32(81518u, var_3.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -574f)), firstLeadingBit(~reverseBits(countOneBits(vec3<i32>(-8286i, 19967i, 34151i)))), global1.x);
}

