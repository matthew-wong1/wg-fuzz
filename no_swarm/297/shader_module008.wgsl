struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<f32>(-143f, 475f), -1362f, Struct_2(vec2<f32>(869f, -697f), Struct_1(vec2<f32>(-252f, 214f), vec3<u32>(0u, 4294967295u, 15478u), true), -16150i, vec3<u32>(11311u, 24088u, 26472u)), Struct_2(vec2<f32>(608f, -1116f), Struct_1(vec2<f32>(565f, -348f), vec3<u32>(4294967295u, 105352u, 8281u), false), 28497i, vec3<u32>(3448u, 0u, 0u)));

var<private> global1: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-49630i, 19553i, 32546i), vec3<i32>(-1i, -13183i, 0i), vec3<i32>(11155i, -14551i, -28855i), vec3<i32>(0i, -8305i, 1i), vec3<i32>(0i, 3442i, -43461i), vec3<i32>(-42205i, 0i, -15313i), vec3<i32>(36187i, 0i, 1471i), vec3<i32>(-9200i, 7003i, 33795i), vec3<i32>(-1i, 30705i, -1i), vec3<i32>(22371i, i32(-2147483648), 1i), vec3<i32>(i32(-2147483648), -6676i, -1i), vec3<i32>(-34214i, 2247i, -1i), vec3<i32>(-23547i, i32(-2147483648), 1i), vec3<i32>(-1i, -953i, 2147483647i), vec3<i32>(1i, 14885i, 0i), vec3<i32>(82698i, 72273i, 77354i), vec3<i32>(-234i, 47546i, -1i), vec3<i32>(-5847i, 2147483647i, i32(-2147483648)), vec3<i32>(-51792i, 33682i, i32(-2147483648)), vec3<i32>(-37579i, -4404i, 2147483647i), vec3<i32>(2147483647i, 1i, -16966i), vec3<i32>(43077i, -1i, 16226i), vec3<i32>(-1i, -1i, 1556i), vec3<i32>(i32(-2147483648), i32(-2147483648), 31569i), vec3<i32>(0i, 0i, 79351i), vec3<i32>(1i, 46593i, -1i), vec3<i32>(-20479i, -1i, 2147483647i), vec3<i32>(29562i, -52690i, 1i), vec3<i32>(i32(-2147483648), 1i, 41975i), vec3<i32>(13021i, 1i, i32(-2147483648)), vec3<i32>(0i, 23953i, -43556i));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3) -> vec3<u32> {
    global1 = array<vec3<i32>, 31>();
    var var_0 = arg_1.c;
    let var_1 = !var_0.b.c;
    global1 = array<vec3<i32>, 31>();
    global1 = array<vec3<i32>, 31>();
    return vec3<u32>(11927u, 80489u, ~(~8816u));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = ~abs(~firstLeadingBit(u_input.a.x));
    global1 = array<vec3<i32>, 31>();
    var var_1 = _wgslsmith_sub_vec2_i32(u_input.c.wx, u_input.c.yy);
    var_1 = -(~u_input.c.yx);
    var_1 = select(u_input.c.wz, abs(u_input.c.wy) >> (_wgslsmith_div_vec2_u32(abs(vec2<u32>(102523u, 0u)), u_input.a.yx) % vec2<u32>(32u)), select(!(!select(vec2<bool>(global0.c.b.c, false), vec2<bool>(global0.d.b.c, true), global0.c.b.c)), select(vec2<bool>(global0.c.b.c || true, false && global0.d.b.c), vec2<bool>(any(vec4<bool>(global0.c.b.c, global0.d.b.c, global0.d.b.c, true)), false), any(select(vec3<bool>(false, global0.c.b.c, false), vec3<bool>(global0.d.b.c, false, false), vec3<bool>(global0.c.b.c, false, global0.d.b.c)))), global0.c.b.c));
    return Struct_1(global0.a, ~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), func_3(u_input.c, Struct_3(vec2<f32>(global0.a.x, -988f), -1110f, global0.d, Struct_2(vec2<f32>(-775f, global0.a.x), Struct_1(global0.c.a, u_input.a, global0.d.b.c), 43580i, u_input.a)))) << (~global0.d.d % vec3<u32>(32u)), true);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_2(global0.c.d.zz).a)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.c.b.a, _wgslsmith_f_op_vec2_f32(min(arg_1.a, vec2<f32>(-1238f, arg_0)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -605f))));
    let var_1 = _wgslsmith_mult_vec2_u32(~abs(~(vec2<u32>(4294967295u, 14362u) >> (global0.d.b.b.xx % vec2<u32>(32u)))), ~(~firstTrailingBit(vec2<u32>(u_input.a.x, arg_1.b.x) & vec2<u32>(4294967295u, 58111u))));
    var var_2 = vec4<bool>(global0.d.b.c, true, global0.d.b.c, true);
    global1 = array<vec3<i32>, 31>();
    let var_3 = vec2<bool>(var_2.x, select(func_2(select(vec2<u32>(7819u, global0.c.b.b.x), u_input.a.xz, var_2.xz)).c || any(var_2.ww), func_2(~vec2<u32>(var_1.x, 16463u)).c, global0.c.b.c));
    return ~u_input.c.x;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    global1 = array<vec3<i32>, 31>();
    global0 = Struct_3(global0.d.b.a, _wgslsmith_f_op_f32(round(arg_2.b.a.x)), arg_2, arg_1);
    let var_0 = -countOneBits(u_input.c.x) << (~45228u % 32u);
    var var_1 = _wgslsmith_f_op_f32(select(arg_2.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a.x))))), global0.c.b.c));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.a.x, -1000f, arg_2.b.a.x)));
    return Struct_3(arg_2.a, var_2.x, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -499f)), -609f), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-344f, -426f), _wgslsmith_f_op_vec2_f32(trunc(var_2.xz))), (vec3<u32>(60371u, 1u, 1u) & vec3<u32>(138695u, arg_1.b.b.x, arg_1.b.b.x)) << (vec3<u32>(arg_0.b.x, 1u, arg_2.d.x) % vec3<u32>(32u)), !arg_0.c), arg_1.c, vec3<u32>(4294967295u, arg_0.b.x, _wgslsmith_dot_vec2_u32(arg_2.b.b.zx | global0.d.b.b.yy, abs(vec2<u32>(u_input.a.x, 48222u))))), arg_1);
}

fn func_6(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    global0 = arg_0;
    let var_0 = global0.d.c;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.a)), ~firstTrailingBit(vec3<u32>(4294967295u, 44799u, u_input.a.x)), any(!vec3<bool>(true, !arg_2.c, !arg_0.c.b.c)));
    var_1 = func_2(_wgslsmith_div_vec2_u32(arg_2.b.zz ^ ~(arg_0.d.d.yx << (global0.c.b.b.xz % vec2<u32>(32u))), var_1.b.xy));
    var var_2 = Struct_1(arg_2.a, ~(_wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.a.x, 1u)), ~vec3<u32>(arg_0.c.d.x, 9261u, 28001u)) & _wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.c.b.b.x, 14531u, 34525u), vec3<u32>(arg_2.b.x, arg_0.c.b.b.x, 50005u))), false);
    return arg_0;
}

fn func_1() -> Struct_3 {
    let var_0 = vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(abs(select(vec4<u32>(u_input.a.x, global0.c.b.b.x, 79144u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 8224u, global0.d.d.x, 4294967295u), vec4<u32>(0u, u_input.a.x, u_input.a.x, global0.c.d.x)), global0.d.b.b.x <= 0u)), vec4<u32>(~global0.d.d.x, u_input.a.x, min(countOneBits(25070u), global0.c.b.b.x), abs(1u | u_input.a.x))), ~(~1u), u_input.a.x ^ 0u);
    let var_1 = func_6(func_5(global0.d.b, Struct_2(global0.a, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1436f, -919f)), max(vec3<u32>(global0.c.b.b.x, 0u, global0.c.d.x), vec3<u32>(53158u, 7218u, u_input.a.x)), true), func_4(global0.d.b.a.x, func_2(global0.c.b.b.yx)), global0.d.b.b), Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(573f, global0.c.a.x)))), func_2(reverseBits(u_input.a.zz)), 21775i, select(select(vec3<u32>(69982u, 0u, var_0.x), u_input.a, vec3<bool>(true, true, global0.c.b.c)), vec3<u32>(4294967295u, 38570u, global0.d.b.b.x), !vec3<bool>(global0.d.b.c, global0.d.b.c, false))), -(global0.c.c ^ (global0.c.c & 1i))), _wgslsmith_f_op_f32(min(global0.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b)))))), global0.d.b, abs(_wgslsmith_mod_i32(u_input.b, 0i)));
    let var_2 = abs(~(~func_5(func_6(var_1, var_1.b, Struct_1(vec2<f32>(-1050f, 282f), var_0.wzy, global0.d.b.c), u_input.c.x).c.b, func_6(Struct_3(vec2<f32>(global0.b, global0.a.x), 2095f, var_1.c, var_1.c), -584f, var_1.d.b, 2147483647i).c, Struct_2(global0.c.b.a, global0.c.b, 45664i, vec3<u32>(11410u, 111038u, global0.c.d.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.c, -38571i), vec2<i32>(1i, 2147483647i))).d.c));
    global0 = func_5(global0.c.b, func_6(var_1, var_1.c.a.x, func_5(var_1.c.b, Struct_2(var_1.d.b.a, Struct_1(vec2<f32>(-703f, var_1.d.b.a.x), global0.d.d, global0.d.b.c), ~var_2, u_input.a & vec3<u32>(var_1.c.d.x, var_1.d.b.b.x, global0.d.b.b.x)), Struct_2(vec2<f32>(-1112f, var_1.c.b.a.x), Struct_1(vec2<f32>(global0.b, var_1.d.b.a.x), vec3<u32>(var_1.c.b.b.x, global0.c.b.b.x, 0u), true), i32(-1i) * -41434i, ~vec3<u32>(36265u, var_1.d.b.b.x, 0u)), _wgslsmith_mod_i32(2147483647i, var_2) | var_2).c.b, select(~_wgslsmith_dot_vec2_i32(vec2<i32>(30365i, 2147483647i), vec2<i32>(-70934i, u_input.b)), ~min(-10487i, var_1.d.c), false)).c, func_6(var_1, _wgslsmith_f_op_f32(-420f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1210f * var_1.d.b.a.x) + var_1.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d.a)), vec3<u32>(8367u, ~4294967295u, u_input.a.x), false), var_1.c.c & var_2).c, abs(~(-20517i)));
    let var_3 = vec4<bool>(!var_1.c.b.c, false, !((global0.d.b.b.x << (global0.d.b.b.x % 32u)) == (u_input.a.x | 4294967295u)) & (~select(72568u, 1u, var_1.c.b.c) > 24575u), false);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    global1 = array<vec3<i32>, 31>();
    let var_1 = Struct_2(global0.a, global0.c.b, 0i ^ u_input.c.x, _wgslsmith_add_vec3_u32(u_input.a, firstLeadingBit(reverseBits(~vec3<u32>(77932u, 85821u, u_input.a.x)))));
    var var_2 = func_1();
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(global0.d.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(func_6(Struct_3(vec2<f32>(-1576f, -144f), 129f, var_2.d, Struct_2(vec2<f32>(766f, var_2.b), var_1.b, -1i, u_input.a)), var_1.b.a.x, var_1.b, -87646i).c.b, Struct_2(var_1.a, Struct_1(global0.a, vec3<u32>(u_input.a.x, var_1.b.b.x, 0u), var_2.d.b.c), 37351i, vec3<u32>(var_2.d.d.x, 1u, var_2.c.d.x)), Struct_2(vec2<f32>(-132f, -1000f), global0.d.b, var_1.c, vec3<u32>(7688u, 0u, 27848u)), func_6(Struct_3(vec2<f32>(-490f, 862f), global0.d.b.a.x, var_1, Struct_2(vec2<f32>(1000f, var_1.b.a.x), Struct_1(vec2<f32>(var_1.a.x, -1110f), var_1.b.b, global0.d.b.c), -2147483647i, vec3<u32>(38466u, u_input.a.x, global0.c.b.b.x))), var_1.b.a.x, Struct_1(var_1.b.a, vec3<u32>(0u, u_input.a.x, 0u), false), -73660i).d.c).c.b.a.x)), func_1().c, Struct_2(var_2.c.b.a, func_5(global0.c.b, Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(225f, -541f))), Struct_1(vec2<f32>(var_1.a.x, global0.d.b.a.x), var_2.c.d, false), -35575i, u_input.a | vec3<u32>(0u, 6957u, 0u)), var_2.c, ~reverseBits(var_1.c)).d.b, var_2.d.c, var_2.c.d));
    var var_4 = select(vec4<bool>(var_2.d.b.c, true, var_2.c.b.c, var_3.d.b.c), !select(!select(vec4<bool>(var_3.d.b.c, var_2.d.b.c, false, false), vec4<bool>(true, global0.c.b.c, var_3.d.b.c, var_1.b.c), vec4<bool>(false, true, var_2.c.b.c, var_3.c.b.c)), select(select(vec4<bool>(false, true, global0.c.b.c, global0.d.b.c), vec4<bool>(var_1.b.c, true, true, var_2.d.b.c), global0.c.b.c), select(vec4<bool>(true, var_1.b.c, var_1.b.c, true), vec4<bool>(var_1.b.c, false, var_2.d.b.c, var_2.d.b.c), var_2.c.b.c), vec4<bool>(true, var_1.b.c, var_1.b.c, true)), select(!vec4<bool>(false, true, false, var_3.d.b.c), select(vec4<bool>(global0.d.b.c, var_1.b.c, false, true), vec4<bool>(var_1.b.c, true, false, true), var_2.d.b.c), false)), var_1.b.c || var_2.c.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1263f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.a.x + -241f), 1585f, any(vec4<bool>(true, false, var_2.c.b.c, var_3.c.b.c))))))), ~var_3.c.b.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1486f - _wgslsmith_f_op_f32(select(var_3.b, var_1.b.a.x, var_3.c.b.c)))), -1722f)));
}

