struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 1i, 1i, 10586i);

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-34434i, 66681i, 1704i), vec2<i32>(2147483647i, 18597i), 19775i, -35562i, -34639i);

var<private> global2: u32;

var<private> global3: u32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = (abs(arg_0.d.c.ww) << (arg_0.d.c.yz % vec2<u32>(32u))) ^ abs(vec2<u32>(~u_input.b.x, 47157u << (u_input.d.x % 32u)));
    var var_1 = !arg_0.d.b;
    var_0 = (~(~u_input.a) | ((abs(vec2<u32>(1u, arg_0.d.c.x)) >> (firstTrailingBit(u_input.d.yz) % vec2<u32>(32u))) & (arg_0.d.c.wz >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u))))) ^ reverseBits(~vec2<u32>(0u, arg_0.d.c.x));
    var var_2 = arg_0.d.a.zwz;
    var var_3 = Struct_1(global1.a, select(global0.yz, var_2.yy, select(var_1.x, any(arg_0.d.b), var_1.x)), 1i, -min(arg_0.d.a.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 0i, -2147483647i), global0.wxz)), abs(global1.a.x));
    return abs(arg_0.d.a);
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 255f))))))), _wgslsmith_clamp_i32(u_input.c, countOneBits(~1i), global0.x), _wgslsmith_dot_vec4_i32(-select(vec4<i32>(-46717i, 1i, global1.a.x, global1.c), vec4<i32>(global1.d, global1.b.x, -1i, 42006i), vec4<bool>(true, true, false, true)), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, 18831i, 28896i, 23678i), func_3(Struct_3(vec2<f32>(arg_0, arg_0), u_input.c, true, Struct_2(vec4<i32>(global0.x, global0.x, -2147483647i, 26617i), vec4<bool>(false, false, false, false), vec4<u32>(4294967295u, 0u, u_input.b.x, 4294967295u), vec3<bool>(false, false, false)))))) > abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 2147483647i, global1.e, global1.d) ^ vec4<i32>(8360i, -62532i, 6352i, global1.a.x), vec4<i32>(-2147483647i, global0.x, -1i, 2651i))), Struct_2(-vec4<i32>(global0.x, u_input.c, -7232i, i32(-1i) * -19182i), select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, false), vec4<bool>(true, any(vec3<bool>(true, false, false)), any(vec4<bool>(false, true, true, true)), false)), vec4<u32>(_wgslsmith_mult_u32(firstLeadingBit(0u), u_input.d.x), ~select(u_input.a.x, u_input.d.x, true), u_input.d.x | ~4294967295u, _wgslsmith_div_u32(~67004u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.d.zx))), select(vec3<bool>(select(false, true, false), false, true), vec3<bool>(any(vec2<bool>(true, false)), true, true), any(vec4<bool>(true, true, true, false)))));
    var var_1 = vec2<i32>(var_0.d.a.x, -var_0.d.a.x);
    let var_2 = vec4<u32>(38959u, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_0.d.c, vec4<u32>(0u, 0u, 4241u, 31185u)), 21240u), 33161u, u_input.a.x)), var_0.d.c.x, ~(~u_input.b.x & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.e)) << (~(~32917u) % 32u));
    let var_3 = Struct_4(Struct_1(global1.a, -vec2<i32>(-global1.a.x, _wgslsmith_mult_i32(global0.x, 1i)), max(countOneBits(min(var_0.d.a.x, global0.x)), 37602i), 1i, ~reverseBits(abs(u_input.c))), Struct_2(~var_0.d.a, vec4<bool>(all(!var_0.d.d), true, true, any(vec3<bool>(var_0.d.d.x, var_0.c, false))), ~vec4<u32>(u_input.e.x | 0u, u_input.d.x, 4294967295u, var_2.x), vec3<bool>(false, all(var_0.d.b.wzx), !any(vec3<bool>(var_0.c, false, true)))), (i32(-1i) * -(~var_0.b)) == global1.a.x, ~(~_wgslsmith_dot_vec3_u32(var_2.xxy, var_0.d.c.wwz)));
    global3 = _wgslsmith_dot_vec4_u32(select(~(~(~vec4<u32>(var_0.d.c.x, var_2.x, var_2.x, 25407u))), ~select(var_2, var_0.d.c, !vec4<bool>(var_0.c, true, var_3.b.b.x, false)), select(vec4<bool>(!var_3.c, true, false, !var_0.c), var_3.b.b, !(var_3.b.b.x & true))), countOneBits(vec4<u32>(select(max(50069u, 1u), var_2.x, var_3.c), _wgslsmith_mod_u32(var_2.x, var_2.x ^ 87468u), 48250u, 1u)));
    return Struct_2(var_0.d.a, !vec4<bool>(!var_3.b.d.x, !(2147483647i > global1.c), _wgslsmith_f_op_f32(max(2019f, -1215f)) < _wgslsmith_f_op_f32(step(arg_0, -1000f)), !all(var_3.b.b.wxw)), var_3.b.c, !var_3.b.d);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_3 {
    var var_0 = vec3<bool>(arg_2.b.x, arg_2.d.x & func_2(1190f).b.x, !any(func_2(-1208f).b.xw));
    return Struct_3(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -750f))))), min(firstTrailingBit(arg_0.a.x), -global1.c << (15868u % 32u)), arg_2.d.x, arg_2);
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_3, arg_3: i32) -> Struct_4 {
    let var_0 = vec3<u32>(reverseBits(~52501u), func_4(Struct_2(arg_2.d.a, vec4<bool>(arg_2.c, -36397i != arg_3, true, arg_2.d.b.x), arg_2.d.c, func_2(arg_2.a.x).b.xwy), countOneBits(33096u), arg_2.d).d.c.x, arg_2.d.c.x);
    global0 = func_3(func_4(Struct_2(vec4<i32>(~(-1i), _wgslsmith_mult_i32(global0.x, -10233i), _wgslsmith_add_i32(u_input.c, 60168i), _wgslsmith_dot_vec2_i32(vec2<i32>(-66777i, 108i), global0.xx)), select(select(arg_2.d.b, vec4<bool>(arg_2.d.d.x, arg_2.d.b.x, arg_2.d.d.x, arg_2.c), arg_2.c), arg_2.d.b, vec4<bool>(false, arg_2.d.b.x, false, false)), arg_2.d.c, !arg_2.d.b.wxz), 59412u, Struct_2(arg_2.d.a, vec4<bool>(select(true, true, true), !arg_2.d.d.x, 654f != arg_2.a.x, arg_2.d.d.x == arg_2.c), ~arg_2.d.c, !(!vec3<bool>(arg_2.c, false, true)))));
    let var_1 = Struct_4(Struct_1(global1.a, -vec2<i32>(arg_2.d.a.x, global1.c), u_input.c, global0.x, -abs(~arg_3)), Struct_2(vec4<i32>(min(2147483647i, abs(32345i)), -firstTrailingBit(arg_2.d.a.x), 0i ^ arg_3, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-1i, -1i), vec2<i32>(global1.b.x, arg_2.d.a.x), arg_2.d.d.yz), global1.a.zy & arg_2.d.a.yw)), arg_2.d.b, ~vec4<u32>(var_0.x, func_2(arg_2.a.x).c.x, 76749u, arg_1), select(vec3<bool>(false, arg_2.c, !arg_2.d.b.x), arg_2.d.b.wwx, !(arg_3 <= arg_3))), !arg_2.c, 13421u);
    global1 = var_1.a;
    global2 = var_1.d;
    return Struct_4(Struct_1(select(_wgslsmith_sub_vec3_i32(-var_1.b.a.xzy, arg_2.d.a.zyy), global0.wxy, !var_1.b.b.zzy), ~vec2<i32>(~global0.x, 1i), global0.x, arg_3, 0i), arg_2.d, !arg_2.d.b.x && !(!(!arg_2.d.b.x)), _wgslsmith_add_u32(var_0.x, var_1.b.c.x));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = Struct_4(Struct_1(vec3<i32>(arg_1.b.a.x, 2147483647i, u_input.c), arg_1.a.b, arg_0.x, reverseBits(0i), -global1.a.x), func_2(-133f), arg_1.b.d.x, func_5(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(5429u, 0u) | select(u_input.e.x, u_input.b.x, arg_1.b.d.x), ~u_input.e.x, 4294967295u), 23078u, func_4(Struct_2(vec4<i32>(12632i, 51121i, global0.x, -1i), !arg_1.b.b, _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, u_input.d.x), arg_1.b.c), !arg_1.b.b.wxw), 1u << (1u % 32u), arg_1.b), -_wgslsmith_dot_vec4_i32(arg_1.b.a, ~arg_1.b.a)).d);
    global2 = func_4(arg_1.b, 4294967295u, Struct_2(_wgslsmith_mod_vec4_i32(-_wgslsmith_sub_vec4_i32(arg_0, arg_0), -var_0.b.a), func_4(func_5(_wgslsmith_div_u32(57987u, var_0.d), 1u, func_4(Struct_2(arg_1.b.a, arg_1.b.b, vec4<u32>(arg_1.b.c.x, 52956u, 0u, 0u), vec3<bool>(arg_1.b.b.x, true, true)), 38498u, var_0.b), i32(-1i) * -1i).b, ~var_0.d, var_0.b).d.b, var_0.b.c, !(!vec3<bool>(arg_1.c, true, false)))).d.c.x;
    global3 = abs(~arg_1.b.c.x);
    global1 = Struct_1(_wgslsmith_mult_vec3_i32(~_wgslsmith_clamp_vec3_i32(~vec3<i32>(-7780i, 1001i, global0.x), -vec3<i32>(26321i, -13619i, 33331i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, var_0.b.a.x, 0i), global0.wzx)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-31120i & arg_1.b.a.x, global1.a.x, u_input.c), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(13056i, 4166i, arg_1.b.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(0i, global0.x, -22795i), arg_1.b.a.xxy), -vec3<i32>(u_input.c, 1i, global1.a.x)), vec3<i32>(_wgslsmith_sub_i32(arg_1.a.a.x, arg_3.x), -var_0.b.a.x, ~0i))), _wgslsmith_mult_vec2_i32(-vec2<i32>(arg_1.b.a.x, ~arg_0.x), arg_2.zz), 0i, 10948i, ~_wgslsmith_add_i32(~(~global1.c), _wgslsmith_mult_i32(18028i, global0.x ^ -1i)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(min(-687f, _wgslsmith_f_op_f32(round(829f)))), 1591f))), abs(func_3(func_4(func_4(Struct_2(vec4<i32>(-2147483647i, 1880i, 9195i, -38655i), arg_1.b.b, arg_1.b.c, arg_1.b.b.xwx), 4294967295u, Struct_2(vec4<i32>(-2147483647i, 1i, global0.x, -50041i), vec4<bool>(arg_1.b.b.x, true, false, var_0.c), vec4<u32>(47215u, var_0.d, 83867u, 52688u), var_0.b.b.xyz)).d, _wgslsmith_add_u32(0u, u_input.d.x), func_5(101624u, u_input.b.x, Struct_3(vec2<f32>(-1000f, 415f), global1.c, true, arg_1.b), 0i).b)).x), -331i >= global1.c, Struct_2(vec4<i32>(firstLeadingBit(20403i), 1i, func_2(1612f).a.x, u_input.c), !vec4<bool>(arg_1.c & var_0.b.d.x, all(vec2<bool>(false, true)), true, var_0.b.b.x), min(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 22802u, 1u, var_0.b.c.x) >> (vec4<u32>(61151u, 56944u, 72596u, 2251u) % vec4<u32>(32u)), arg_1.b.c | vec4<u32>(14543u, u_input.b.x, var_0.b.c.x, 36340u)), vec4<u32>(var_0.b.c.x, _wgslsmith_div_u32(4100u, 18409u), arg_1.d >> (4294967295u % 32u), var_0.d)), vec3<bool>(false, !arg_1.c, true)));
    return _wgslsmith_f_op_f32(round(675f));
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> i32 {
    var var_0 = ~_wgslsmith_mod_i32(~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-17013i, 2147483647i, -2147483647i), arg_0.b.a.x | arg_1), i32(-1i) * -28868i);
    let var_1 = Struct_2(arg_0.b.a, select(!vec4<bool>(all(arg_0.b.b), arg_0.c || arg_0.b.b.x, true, false), arg_0.b.b, arg_0.b.b), vec4<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.b.c.x), vec2<u32>(u_input.d.x, 82906u))), 47509u, ~firstLeadingBit(1u), 4294967295u), !select(arg_0.b.b.yxx, select(arg_0.b.d, arg_0.b.b.wzz, !vec3<bool>(true, arg_0.c, arg_0.b.d.x)), arg_0.b.b.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(abs(arg_0.b.a), func_5(~arg_0.d, arg_0.b.c.x, func_4(func_2(990f), ~var_1.c.x, arg_0.b), -(arg_1 >> (0u % 32u))), global1.a, vec3<i32>(-arg_0.a.d, -1i, firstTrailingBit(~var_1.a.x)))));
    var var_3 = ~arg_0.b.c;
    global1 = Struct_1(global0.xwy, select(vec2<i32>(44720i, countOneBits(_wgslsmith_dot_vec3_i32(var_1.a.ywz, vec3<i32>(global1.d, global1.a.x, arg_0.b.a.x)))), global0.wz, arg_0.b.b.x), func_3(Struct_3(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(vec4<i32>(39560i, -27541i, arg_0.b.a.x, global0.x), arg_0.b.b, arg_0.b.c, vec3<bool>(arg_0.c, false, false)), 4294967295u, var_1).a * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-343f, -1699f), vec2<f32>(891f, -435f), vec2<bool>(true, var_1.b.x)))), arg_0.b.a.x, false, var_1)).x, u_input.c, func_4(var_1, var_1.c.x, Struct_2(-(vec4<i32>(0i, 42307i, global1.d, arg_0.b.a.x) | vec4<i32>(var_1.a.x, 23712i, u_input.c, arg_0.b.a.x)), vec4<bool>(true, true, var_1.b.x, !var_1.b.x), func_5(0u, u_input.b.x, Struct_3(vec2<f32>(-170f, 1464f), global1.d, var_1.b.x, arg_0.b), -global0.x).b.c, vec3<bool>(true, var_1.a.x < 1i, false))).d.a.x);
    return ~5128i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec4_i32(abs(-(vec4<i32>(global1.c, -38548i, global0.x, global0.x) >> (vec4<u32>(4294967295u, 4294967295u, 1u, 35864u) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(global1.d, -1i, u_input.c, global0.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, global0.x, -2147483647i, global0.x) & vec4<i32>(-20997i, global0.x, global1.e, global0.x), ~vec4<i32>(-2147483647i, 37120i, global0.x, -404i)), reverseBits(select(vec4<i32>(2147483647i, 0i, global1.d, -64238i), vec4<i32>(-668i, global0.x, 0i, u_input.c), false)))) & -(vec4<i32>(~(-5154i), func_1(Struct_4(Struct_1(vec3<i32>(global1.c, 2147483647i, -70939i), global1.a.xz, global1.b.x, -1i, global1.a.x), Struct_2(vec4<i32>(-21815i, 2147483647i, 8126i, global0.x), vec4<bool>(true, false, false, true), vec4<u32>(u_input.d.x, 4294967295u, 0u, u_input.e.x), vec3<bool>(false, false, true)), true, 48793u), 46385i), u_input.c, -6384i) | vec4<i32>(7520i, ~global0.x, 12804i, -global0.x));
    let var_0 = Struct_2(min(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 60930i, -2147483647i, -8320i), vec4<i32>(global0.x, 2147483647i, -3219i, u_input.c)) >> (~vec4<u32>(4294967295u, u_input.d.x, 25810u, u_input.a.x) % vec4<u32>(32u)), func_2(_wgslsmith_f_op_f32(897f - 1000f)).a) ^ vec4<i32>(u_input.c, 22515i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(23866i, global1.b.x, u_input.c, global1.e), vec4<i32>(u_input.c, u_input.c, global1.b.x, u_input.c))), i32(-1i) * -2147483647i), func_5(u_input.e.x, 1u, func_4(Struct_2(func_4(Struct_2(vec4<i32>(-45320i, 0i, 48951i, -56310i), vec4<bool>(false, false, false, false), vec4<u32>(50480u, u_input.a.x, u_input.e.x, 37103u), vec3<bool>(true, false, true)), u_input.e.x, Struct_2(vec4<i32>(0i, u_input.c, 1i, global0.x), vec4<bool>(false, false, false, false), vec4<u32>(138131u, u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(false, true, false))).d.a, vec4<bool>(false, true, true, true), ~vec4<u32>(u_input.e.x, 4294967295u, u_input.d.x, 0u), vec3<bool>(true, false, false)), _wgslsmith_clamp_u32(u_input.e.x, ~u_input.e.x, ~u_input.a.x), func_4(Struct_2(vec4<i32>(-2147483647i, 25088i, global0.x, 2147483647i), vec4<bool>(false, true, true, false), vec4<u32>(u_input.d.x, 34736u, 0u, u_input.a.x), vec3<bool>(false, true, false)), u_input.b.x, Struct_2(vec4<i32>(global1.e, 1i, 0i, 1i), vec4<bool>(false, true, false, false), vec4<u32>(u_input.b.x, u_input.e.x, u_input.d.x, u_input.d.x), vec3<bool>(true, false, false))).d), u_input.c).b.b, ~vec4<u32>(~27607u, 4294967295u, u_input.e.x, select(~u_input.a.x, _wgslsmith_mod_u32(1u, u_input.e.x), true)), !func_5(~(~4294967295u), _wgslsmith_mod_u32(~u_input.d.x, u_input.d.x), Struct_3(vec2<f32>(-729f, 646f), 1i, true, func_5(4294967295u, u_input.e.x, Struct_3(vec2<f32>(787f, -1714f), -2147483647i, false, Struct_2(vec4<i32>(global0.x, -51833i, u_input.c, 2147483647i), vec4<bool>(true, true, false, false), vec4<u32>(1u, u_input.b.x, 1u, u_input.e.x), vec3<bool>(true, true, true))), global0.x).b), -7336i).b.b.xxw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2213f))).c.yzy, ~func_2(func_4(Struct_2(vec4<i32>(var_0.a.x, 0i, u_input.c, 2147483647i), vec4<bool>(var_0.d.x, var_0.b.x, false, false), var_0.c, vec3<bool>(true, var_0.b.x, false)), 14008u, var_0).a.x).c.xwz));
}

