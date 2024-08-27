struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_4 = Struct_4(Struct_3(Struct_1(vec4<i32>(0i, 0i, 30008i, 1i), -1038f, vec2<u32>(0u, 1u), vec4<u32>(4294967295u, 4294967295u, 8432u, 4294967295u), vec2<u32>(10590u, 0u)), Struct_1(vec4<i32>(i32(-2147483648), -1i, 0i, 10786i), 1865f, vec2<u32>(1u, 13758u), vec4<u32>(25220u, 12471u, 4294967295u, 65067u), vec2<u32>(4294967295u, 1u)), i32(-2147483648), 1i), vec4<bool>(true, false, true, true));

var<private> global2: Struct_2;

var<private> global3: vec4<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1269f);
    var var_1 = vec4<i32>(-1i, 0i, firstLeadingBit(_wgslsmith_add_i32(min(1i, -49003i), u_input.b.x) >> (arg_2.x % 32u)), -_wgslsmith_add_i32(select(global1.a.d, global1.a.a.a.x, global3.x), ~(-1i)) ^ 1i);
    let var_2 = arg_1;
    var var_3 = vec4<f32>(1206f, -1468f, _wgslsmith_f_op_f32(-var_0), global1.a.a.b);
    let var_4 = var_3.yz;
    return 30096u;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: vec4<i32>) -> i32 {
    let var_0 = !select(global1.b.wwx, global1.b.xyy, global3.x);
    let var_1 = -565f;
    global2 = Struct_2(select(~global1.a.b.e.x, global1.a.a.e.x, select(!global1.b.x, select(var_1 == var_1, true, false || global3.x), select(all(global2.c), !global2.c.x, global2.b.x && true))), global3.wz, global3.zzz);
    global1 = Struct_4(Struct_3(global1.a.b, Struct_1(global1.a.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.b.b + global1.a.b.b) - _wgslsmith_f_op_f32(round(var_1))), reverseBits(global1.a.a.e), max(global1.a.a.d, ~vec4<u32>(global1.a.a.d.x, 26944u, 4294967295u, global1.a.a.e.x)), global1.a.a.d.zy), -global1.a.c, -firstTrailingBit(u_input.a.x)), select(global1.b, global1.b, global1.b));
    global1 = Struct_4(global1.a, vec4<bool>(all(vec3<bool>(false | var_0.x, true, select(global2.b.x, global3.x, true))), any(vec3<bool>(true, global1.b.x && false, false)), !global1.b.x, ~(~u_input.b.x) > (u_input.b.x ^ -u_input.b.x)));
    return countOneBits(abs(0i));
}

fn func_2(arg_0: vec3<u32>) -> vec4<bool> {
    let var_0 = global1.a.b.c.x;
    let var_1 = func_4(global1.a.a.b, Struct_2(countOneBits(~12801u) | ~func_3(global3.ww, Struct_2(arg_0.x, global1.b.yw, vec3<bool>(global3.x, true, false)), vec3<u32>(arg_0.x, global1.a.a.d.x, global1.a.a.e.x)), select(!select(global1.b.xy, global1.b.xx, global3.yx), !vec2<bool>(global1.b.x, global2.b.x), !all(global1.b)), vec3<bool>(!global2.b.x, !(!global2.c.x), global2.b.x | false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.b.b))) - global1.a.a.b), vec4<i32>(-1i, ~(-60082i), u_input.b.x, ~global1.a.d));
    global0 = var_1;
    var var_2 = global3.zyw;
    let var_3 = global1.a.a.d >> (countOneBits(select(vec4<u32>(53417u, abs(global2.a), 14442u >> (1u % 32u), arg_0.x), ~(~vec4<u32>(13946u, 1u, global1.a.b.e.x, 17320u)), any(!vec4<bool>(var_2.x, false, false, true)))) % vec4<u32>(32u));
    return select(vec4<bool>(true, global3.x, true, false), global1.b, global1.b);
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_4 {
    global3 = func_2(reverseBits(global1.a.a.d.ywz));
    var var_0 = _wgslsmith_add_vec4_u32(~global1.a.b.d, _wgslsmith_clamp_vec4_u32(global1.a.b.d, ~_wgslsmith_div_vec4_u32(select(global1.a.a.d, vec4<u32>(1u, global1.a.a.c.x, 1u, 4294967295u), vec4<bool>(false, global1.b.x, false, false)), _wgslsmith_add_vec4_u32(global1.a.a.d, global1.a.a.d)), _wgslsmith_clamp_vec4_u32(global1.a.a.d ^ global1.a.b.d, vec4<u32>(_wgslsmith_add_u32(global1.a.a.d.x, 22734u), 1u, global2.a, _wgslsmith_mult_u32(51941u, 49222u)), global1.a.a.d)));
    var var_1 = select(!select(vec2<bool>(func_2(vec3<u32>(4294967295u, global1.a.a.d.x, 4294967295u)).x, all(vec2<bool>(false, false))), global3.wy, global2.b.x), !global2.b, select(vec2<bool>(global2.c.x, all(vec4<bool>(false, false, global3.x, global3.x))), !select(global2.c.yz, !vec2<bool>(global1.b.x, global3.x), !global1.b.zx), !select(!vec2<bool>(global2.c.x, global3.x), !global1.b.yw, global3.yw)));
    var var_2 = Struct_4(global1.a, !select(select(!vec4<bool>(true, false, var_1.x, false), func_2(var_0.yxw), false), global1.b, all(select(vec3<bool>(global3.x, var_1.x, false), global2.c, vec3<bool>(true, global3.x, false)))));
    var var_3 = global1.b.x;
    return Struct_4(global1.a, !var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(116f + global1.a.b.b))), min(u_input.b.x, 48854i));
    var_0 = func_1(var_0.a.a.b, 0i);
    var var_1 = func_1(-843f, ~_wgslsmith_dot_vec4_i32(-vec4<i32>(17239i, -2147483647i, 30304i, u_input.b.x), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, global1.a.d, u_input.b.x, -2147483647i), max(vec4<i32>(global1.a.c, var_0.a.b.a.x, u_input.a.x, 24439i), var_0.a.a.a)))).b.zwx;
    var var_2 = var_0.b.x;
    let var_3 = vec3<f32>(global1.a.a.b, global1.a.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2112f) + _wgslsmith_f_op_f32(764f + -354f))) - -581f));
    global2 = Struct_2(3306u, select(!vec2<bool>(!global1.b.x, any(global1.b.xxx)), select(vec2<bool>(select(var_1.x, var_1.x, var_1.x), -39534i >= global1.a.c), !var_0.b.zy, var_0.b.x), vec2<bool>(func_2(min(var_0.a.b.d.yyy, vec3<u32>(var_0.a.a.c.x, global2.a, var_0.a.a.d.x))).x, (var_0.a.a.b < -1239f) | global2.b.x)), vec3<bool>(!(!var_0.b.x), global1.b.x, true));
    let var_4 = 0i;
    global1 = Struct_4(global1.a, global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_u32(~global2.a, func_1(-787f, var_0.a.c).a.a.d.x)), var_0.a.b.a.wyy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(abs(-1723f)), ~var_4).a.a.b)), firstLeadingBit(global1.a.a.a.x), reverseBits(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(641f * var_0.a.a.b), _wgslsmith_f_op_f32(-var_3.x))), -func_1(897f, u_input.b.x).a.b.a.x).a.b.d.yxx));
}

